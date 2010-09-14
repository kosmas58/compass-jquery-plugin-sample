class DemoTree < JsTree
  acts_as_tree_on_steroids :family_level => 1
  set_table_name "demo_trees"
  
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
