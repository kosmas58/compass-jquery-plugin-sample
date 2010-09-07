class DemoTree < ActiveRecord::Base
  acts_as_tree_on_steroids :family_level => 1
  
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
          :attr  => {:id => "node_#{child.id.to_s}", :rel => child.ntype},
          :data  => child.title,
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
    node = DemoTree.new()
    node.parent_id = parent.id
    node.position  = params[:position]
    node.left      = parent[:right]
    node.right     = node.left + 1
    node.level     = parent.level + 1
    node.title     = params[:title]
    node.ntype     = params[:type]
    if node.save
      node.ancestors.each do |ancestor|
        ancestor.right += 2
        ancestor.save
      end
      update_all("left = left + 2, right = right + 2", "left >= #{node.right}")
      result = { :status => 1, :id => node.id }   
    else
      result = { :status => 0 }   
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
  
  def self.copy_node(id, node)
    params = {} 
    params[:id]       = id
    params[:position] = node.position 
    params[:title]    = node.title  
    params[:type]     = node.ntype    
    create_node(params)
  end
  
  def self.copy_children(id, node)
    node.children.each do |child|
      result = copy_node(id, child)
      copy_children(result[:id], child)
    end
  end
  
  def self.move_node(params)
    node_old = find(params[:id])
    result   = copy_node(params[:ref], node_old)   
    copy_children(result[:id], node_old)    
    if params[:copy] == "0"   
      remove_node(params[:id])
    end
    result = { :status => 1, :id => result[:id] }   
    return result
  end

  def reconstruct
       
  end 
  
#  function _reconstruct() {
#    $this->db->query("" . 
#      "CREATE TEMPORARY TABLE `temp_tree` (" . 
#        "`".$this->fields["id"]."` INTEGER NOT NULL, " . 
#        "`".$this->fields["parent_id"]."` INTEGER NOT NULL, " . 
#        "`". $this->fields["position"]."` INTEGER NOT NULL" . 
#      ") type=HEAP"
#    );
#    $this->db->query("" . 
#      "INSERT INTO `temp_tree` " . 
#        "SELECT " . 
#          "`".$this->fields["id"]."`, " . 
#          "`".$this->fields["parent_id"]."`, " . 
#          "`".$this->fields["position"]."` " . 
#        "FROM `".$this->table."`"
#    );
#
#    $this->db->query("" . 
#      "CREATE TEMPORARY TABLE `temp_stack` (" . 
#        "`".$this->fields["id"]."` INTEGER NOT NULL, " . 
#        "`".$this->fields["left"]."` INTEGER, " . 
#        "`".$this->fields["right"]."` INTEGER, " . 
#        "`".$this->fields["level"]."` INTEGER, " . 
#        "`stack_top` INTEGER NOT NULL, " . 
#        "`".$this->fields["parent_id"]."` INTEGER, " . 
#        "`".$this->fields["position"]."` INTEGER " . 
#      ") type=HEAP"
#    );
#    $counter = 2;
#    $this->db->query("SELECT COUNT(*) FROM temp_tree");
#    $this->db->nextr();
#    $maxcounter = (int) $this->db->f(0) * 2;
#    $currenttop = 1;
#    $this->db->query("" . 
#      "INSERT INTO `temp_stack` " . 
#        "SELECT " . 
#          "`".$this->fields["id"]."`, " . 
#          "1, " . 
#          "NULL, " . 
#          "0, " . 
#          "1, " . 
#          "`".$this->fields["parent_id"]."`, " . 
#          "`".$this->fields["position"]."` " . 
#        "FROM `temp_tree` " . 
#        "WHERE `".$this->fields["parent_id"]."` = 0"
#    );
#    $this->db->query("DELETE FROM `temp_tree` WHERE `".$this->fields["parent_id"]."` = 0");
#
#    while ($counter <= $maxcounter) {
#      $this->db->query("" . 
#        "SELECT " . 
#          "`temp_tree`.`".$this->fields["id"]."` AS tempmin, " . 
#          "`temp_tree`.`".$this->fields["parent_id"]."` AS pid, " . 
#          "`temp_tree`.`".$this->fields["position"]."` AS lid " . 
#        "FROM `temp_stack`, `temp_tree` " . 
#        "WHERE " . 
#          "`temp_stack`.`".$this->fields["id"]."` = `temp_tree`.`".$this->fields["parent_id"]."` AND " . 
#          "`temp_stack`.`stack_top` = ".$currenttop." " . 
#        "ORDER BY `temp_tree`.`".$this->fields["position"]."` ASC LIMIT 1"
#      );
#
#      if ($this->db->nextr()) {
#        $tmp = $this->db->f("tempmin");
#
#        $q = "INSERT INTO temp_stack (stack_top, `".$this->fields["id"]."`, `".$this->fields["left"]."`, `".$this->fields["right"]."`, `".$this->fields["level"]."`, `".$this->fields["parent_id"]."`, `".$this->fields["position"]."`) VALUES(".($currenttop + 1).", ".$tmp.", ".$counter.", NULL, ".$currenttop.", ".$this->db->f("pid").", ".$this->db->f("lid").")";
#        $this->db->query($q);
#        $this->db->query("DELETE FROM `temp_tree` WHERE `".$this->fields["id"]."` = ".$tmp);
#        $counter++;
#        $currenttop++;
#      }
#      else {
#        $this->db->query("" . 
#          "UPDATE temp_stack SET " . 
#            "`".$this->fields["right"]."` = ".$counter.", " . 
#            "`stack_top` = -`stack_top` " . 
#          "WHERE `stack_top` = ".$currenttop
#        );
#        $counter++;
#        $currenttop--;
#      }
#    }
#
#    $temp_fields = $this->fields;
#    unset($temp_fields["parent_id"]);
#    unset($temp_fields["position"]);
#    unset($temp_fields["left"]);
#    unset($temp_fields["right"]);
#    unset($temp_fields["level"]);
#    if(count($temp_fields) > 1) {
#      $this->db->query("" . 
#        "CREATE TEMPORARY TABLE `temp_tree2` " . 
#          "SELECT `".implode("`, `", $temp_fields)."` FROM `".$this->table."` "
#      );
#    }
#    $this->db->query("TRUNCATE TABLE `".$this->table."`");
#    $this->db->query("" . 
#      "INSERT INTO ".$this->table." (" . 
#          "`".$this->fields["id"]."`, " . 
#          "`".$this->fields["parent_id"]."`, " . 
#          "`".$this->fields["position"]."`, " . 
#          "`".$this->fields["left"]."`, " . 
#          "`".$this->fields["right"]."`, " . 
#          "`".$this->fields["level"]."` " . 
#        ") " . 
#        "SELECT " . 
#          "`".$this->fields["id"]."`, " . 
#          "`".$this->fields["parent_id"]."`, " . 
#          "`".$this->fields["position"]."`, " . 
#          "`".$this->fields["left"]."`, " . 
#          "`".$this->fields["right"]."`, " . 
#          "`".$this->fields["level"]."` " . 
#        "FROM temp_stack " . 
#        "ORDER BY `".$this->fields["id"]."`"
#    );
#    if(count($temp_fields) > 1) {
#      $sql = "" . 
#        "UPDATE `".$this->table."` v, `temp_tree2` SET v.`".$this->fields["id"]."` = v.`".$this->fields["id"]."` ";
#      foreach($temp_fields as $k => $v) {
#        if($k == "id") continue;
#        $sql .= ", v.`".$v."` = `temp_tree2`.`".$v."` ";
#      }
#      $sql .= " WHERE v.`".$this->fields["id"]."` = `temp_tree2`.`".$this->fields["id"]."` ";
#      $this->db->query($sql);
#    }
#  }
  
  def analyze
    
  end

#  function _analyze() {
#    $report = array();
#
#    $this->db->query("" . 
#      "SELECT " . 
#        "`".$this->fields["left"]."` FROM `".$this->table."` s " . 
#      "WHERE " . 
#        "`".$this->fields["parent_id"]."` = 0 "
#    );
#    $this->db->nextr();
#    if($this->db->nf() == 0) {
#      $report[] = "[FAIL]\tNo root node.";
#    }
#    else {
#      $report[] = ($this->db->nf() > 1) ? "[FAIL]\tMore than one root node." : "[OK]\tJust one root node.";
#    }
#    $report[] = ($this->db->f(0) != 1) ? "[FAIL]\tRoot node's left index is not 1." : "[OK]\tRoot node's left index is 1.";
#
#    $this->db->query("" . 
#      "SELECT " . 
#        "COUNT(*) FROM `".$this->table."` s " . 
#      "WHERE " . 
#        "`".$this->fields["parent_id"]."` != 0 AND " . 
#        "(SELECT COUNT(*) FROM `".$this->table."` WHERE `".$this->fields["id"]."` = s.`".$this->fields["parent_id"]."`) = 0 ");
#    $this->db->nextr();
#    $report[] = ($this->db->f(0) > 0) ? "[FAIL]\tMissing parents." : "[OK]\tNo missing parents.";
#
#    $this->db->query("SELECT MAX(`".$this->fields["right"]."`) FROM `".$this->table."`");
#    $this->db->nextr();
#    $n = $this->db->f(0);
#    $this->db->query("SELECT COUNT(*) FROM `".$this->table."`");
#    $this->db->nextr();
#    $c = $this->db->f(0);
#    $report[] = ($n/2 != $c) ? "[FAIL]\tRight index does not match node count." : "[OK]\tRight index matches count.";
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
#    return implode("<br />",$report);
#  }
  
 
  def self.rebuild_demo
    delete_all
    root = create(:parent_id => 0,  :position => 0, :left => 1,  :right => 14, :level => 0, :title => 'ROOT')
    create(:parent_id => root.id,   :position => 0, :left => 2,  :right => 11, :level => 1, :title => 'C:',         :ntype => 'drive')
    create(:parent_id => root.id+1, :position => 0, :left => 3,  :right => 6,  :level => 2, :title => '_demo',     :ntype => 'folder')
    create(:parent_id => root.id+2, :position => 0, :left => 4,  :right => 5,  :level => 3, :title => 'index.html', :ntype => 'default')
    create(:parent_id => root.id+1, :position => 1, :left => 7,  :right => 10, :level => 2, :title => '_docs',      :ntype => 'folder')
    create(:parent_id => root.id,   :position => 1, :left => 12, :right => 13, :level => 1, :title => 'D:',         :ntype => 'drive')
    create(:parent_id => root.id+4, :position => 0, :left => 8,  :right => 9,  :level => 3, :title => 'zmei.html',  :ntype => 'default')
    return { :status => 0 }   
  end 
  
end
