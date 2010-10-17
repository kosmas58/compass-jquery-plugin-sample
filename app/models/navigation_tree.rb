class NavigationTree < ActiveRecord::Base
  acts_as_tree_on_steroids :family_level => 1
  set_table_name "navigation_trees"
  
  def self.get_children(id)
    result = Array.new
    if id == "1"
      node = find_by_title("ROOT")
    else
      node = find(id)
    end
    children = node.children
    if id != 0
      children.each do |child| 
        result << {
          :data => {
            :title => I18n.t(child.title),
            :icon  => (child.icon) ? "#{child.icon}" : nil
          },  
          :attr => {
            :id  => "node_#{child.id.to_s}", 
            :rel => child.ntype,
            :href  => (child.url) ? "#{child.url}" : nil
          },
          :state => (child.right - child.left) > 1 ? "closed" : ""
        }
      end
    end    
    return result
  end
  
  def self.search(search_str)    
    result = Array.new
    nodes = find(:all, :conditions => "title LIKE '%#{search_str}%'")  
    if nodes
      nodes.each do |node|
        result << "#node_#{node.id.to_s}"
      end
    end       
    return result
  end
  
  def self.create_node(params)
    if params[:id].to_i > 0
      parent = find(params[:id])
    else
      parent = find_by_title("ROOT")
    end
    node = new()
    node.parent_id = parent.id
    node.position  = params[:position]
    node.left      = parent[:right]
    node.right     = node.left + 1
    node.level     = parent.level + 1
    node.title     = params[:title]
    node.ntype     = params[:type]
    node.icon      = params[:icon] if params[:icon]
    node.url       = params[:url] if params[:url]
    if node.save
      node.ancestors.each do |ancestor|
        ancestor.right += 2
        ancestor.save
      end
      update_all("left = left + 2, right = right + 2", "left >= #{node.right}")
      if params[:seed]
        result = node.id  
      else
        result = { :status => 1, :id => node.id } 
      end  
    else
      if params[:seed]
        result  = nil  
      else
        result = { :status => 0 } 
      end
    end         
    return result
  end
  
  def self.remove_node(id)
    node = find(id)
    left = node.left
    right = node.right
    dif = right - left + 1
    pid = node.parent_id
    pos = node.position
    
    #  deleting node and its children
    node.delete_branch
    # shift left indexes of nodes right of the node
    update_all("left = left - #{dif}", "left > #{right}")
    # shift right indexes of nodes right of the node and the node's parents
    update_all("right = right - #{dif}", "right > #{left}")  
    # Update position of siblings below the deleted node
    update_all("position = position -1", "parent_id = #{pid} AND position > #{pos}")    
    result = { :status => 1 }         
    return result
  end
  
  def self.rename_node(params)
    node = find(params[:id])
    node.title = params[:title]
    if node.save
      return { :status => 1 }   
    end    
  end
  
  def self.copy_children(id, node)
    node.children.each do |child|
      result = copy_node(id, child)
      copy_children(result[:id], child)
    end
  end

  def self.copy_node(id, node)
    params = {} 
    params[:id]       = id
    params[:position] = node.position 
    params[:title]    = node.title  
    params[:type]     = node.ntype
    params[:icon]     = node.icon if node.icon 
    params[:url]      = node.url if node.url 
    create_node(params) 
  end
  
  def self.move_node(params)
    node_old = find(params[:id])
    result   = copy_node(params[:ref], node_old)
    copy_children(result[:id], node_old)
    if params[:copy] == "1"   
      result = { :status => 1, :id => result[:id] }
    else
      remove_node(params[:id])
      result = { :status => 1, :id => "1" }
    end
    return result
  end
  
  def self.analyze
    report = []
    
    # Analyze root
    nodes = find_all_by_title("ROOT")    
    case nodes.size
      when 0 then
        report << "<div class='span-4'>[FAIL]</div><div class='span-20 last'>No root node.</div>"
      when 1 then
        report << "<div class='span-4'>[OK]</div><div class='span-20 last'>Just one root node.</div>"
        if nodes[0].left == 1
          report << "<div class='span-4'>[OK]</div><div class='span-20 last'>Root node's left index is 1.</div>"
        else
          report << "<div class='span-4'>[FAIL]</div><div class='span-20 last'>Root node's left index is not 1.</div>"
        end
      else
        report << "<div class='span-4'>[FAIL]</div><div class='span-20 last'>More than one root node.</div>"
    end
        
    # Missing parents (Unnecessary)
    
    #b = count(:conditions => "parent_id != 0")
    
    #c = count(:joins => "INNER JOIN demo_trees a ON a.id = demo_trees.parent_id")


#    select cust.id, count(*)
#    from order
#    inner join order on order.cust_id = cust.id
#    group by cust.id
#    having count(*) > 10


    
#    $this->db->query("" . 
#      "SELECT " . 
#        "COUNT(*) FROM `".$this->table."` s " . 
#      "WHERE " . 
#        "`".$this->fields["parent_id"]."` != 0 AND " . 
#        "(SELECT COUNT(*) FROM `".$this->table."` WHERE `".$this->fields["id"]."` = s.`".$this->fields["parent_id"]."`) = 0 ");
#    $this->db->nextr();
#    $report[] = ($this->db->f(0) > 0) ? "[FAIL]\tMissing parents." : "[OK]\tNo missing parents.";


    # Right index
    max     = maximum(:right)
    entries = count

    if max/2 == entries
      report << "<div class='span-4'>[OK]</div><div class='span-20 last'>Right index matches node count.</div>"
    else
      report << "<div class='span-4'>[FAIL]</div><div class='span-20 last'>Right index does not match node count.</div>"
    end 

    # Adjacency
    
    #count1 = count(:conditions => right)

#
#    $this->db->query("" . 
#      "SELECT COUNT(`".$this->fields["id"]."`) FROM `".$this->table."` s " . 
#      "WHERE " . 
#        "(SELECT COUNT(*) FROM `".$this->table."` WHERE " . 
#          "`".$this->fields["right"]."` < s.`".$this->fields["right"]."` AND " . 
#          "`".$this->fields["left"]."` > s.`".$this->fields["left"]."` AND " . 
#          "`".$this->fields["level"]."` = s.`".$this->fields["level"]."` + 1" . 
#        ") != " .
#        "(SELECT COUNT(*) FROM `".$this->table."` WHERE " . 
#          "`".$this->fields["parent_id"]."` = s.`".$this->fields["id"]."`" . 
#        ") "
#      );
#    $this->db->nextr();
#    $report[] = ($this->db->f(0) > 0) ? "[FAIL]\tAdjacency and nested set do not match." : "[OK]\tNS and AJ match";
#

    if max/2 == entries
      report << "<div class='span-4'>[OK]</div><div class='span-20 last'>Adjacency and nested set do match.</div>"
    else
      report << "<div class='span-4'>[FAIL]</div><div class='span-20 last'>Adjacency and nested set do not match.</div>"
    end

    return report * "<br/>"
  end
  
  def self.seed()    
    root = find_by_title("ROOT")
    if root
      File.open(File.join(RAILS_ROOT, 'db/navigation.seeds.rb' ), "w+") do |file|
        file.write "\n#NavigationTree\n"
        file.write "puts \"Started creating navigation tree\"\n"
        file.write "puts \"Please be patient ...\"\n"
        file.write "puts \"... inserting more than 350 nodes with acts_as_tree_on_steroids lasts ...\"\n"
        file.write "puts \"... time for lunch or another break.\"\n"
        file.write "node_#{root.id} = NavigationTree.create(:parent_id => 0, :position => 0, :left => 1,  :right => 2, :level => 0, :title => 'ROOT').id\n"
        export_node(file, root)
        file.write "puts \"Finished creating navigation tree\"\n\n"
        file.close
      end
    end
  end
  
  private
  
  def self.export_node(file, parent)
    pos = 0
    file.write "parent_id = node_#{parent.id}\n"
    parent.children.each do |child|
      file.write "node_#{child.id} = NavigationTree.create_node(:id => parent_id, :seed => true, :position => #{pos}, :title => '#{child.title}', :type => '#{child.ntype}'"
      file.write ", :icon => '#{child.icon}'" if child.icon
      file.write ", :url => '#{child.url}'" if child.url
      file.write ")\n"       
      if !child.is_leaf?
        export_node(file, child)
      end
      pos += 1
    end    
    if parent.parent
      file.write "parent_id = node_#{parent.parent.id}\n"
    end
  end
end

