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
    return result.to_json
  end
  
  def self.search(search_str)    
    result = Array.new
    nodes = find(:all, :conditions => "title LIKE '%#{search_str}%'")  
    if nodes
      nodes.each do |node|
        result << "#node_#{node.id.to_s}"
      end
    end       
    return result.to_json
  end
  
  def self.create_node(params)
    parent = find(params[:id])
    node = DemoTree.new()
    node.parent_id = params[:id]
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
      result = { :status => 0, :id => node.id }   
    else
      result = { :status => 0 }   
    end         
    return result.to_json
  end
  
#  function create_node($data) {
#    $id = parent::_create((int)$data[$this->fields["id"]], (int)$data[$this->fields["position"]]);
#    if($id) {
#      $data["id"] = $id;
#      $this->set_data($data);
#      return  "{ \"status\" : 1, \"id\" : ".(int)$id." }";
#    }
#    return "{ \"status\" : 0 }";
#  }
#      
#  function _create($parent, $position) {
#    return $this->_move(0, $parent, $position);
#  }
#
#  function _move($id, $ref_id, $position = 0, $is_copy = false) {
#    if((int)$ref_id === 0 || (int)$id === 1) { return false; }
#    $sql    = array();            // Queries executed at the end
#    $node   = $this->_get_node($id);    // Node data
#    $nchildren  = $this->_get_children($id);  // Node children
#    $ref_node = $this->_get_node($ref_id);  // Ref node data
#    $rchildren  = $this->_get_children($ref_id);// Ref node children
#
#    $ndif = 2;
#    $node_ids = array(-1);
#    if($node !== false) {
#      $node_ids = array_keys($this->_get_children($id, true));
#      // TODO: should be !$is_copy && , but if copied to self - screws some right indexes
#      if(in_array($ref_id, $node_ids)) return false;
#      $ndif = $node[$this->fields["right"]] - $node[$this->fields["left"]] + 1;
#    }
#    if($position >= count($rchildren)) {
#      $position = count($rchildren);
#    }
#
#    // Not creating or copying - old parent is cleaned
#    if($node !== false && $is_copy == false) {
#      $sql[] = "" . 
#        "UPDATE `".$this->table."` " . 
#          "SET `".$this->fields["position"]."` = `".$this->fields["position"]."` - 1 " . 
#        "WHERE " . 
#          "`".$this->fields["parent_id"]."` = ".$node[$this->fields["parent_id"]]." AND " . 
#          "`".$this->fields["position"]."` > ".$node[$this->fields["position"]];
#      $sql[] = "" . 
#        "UPDATE `".$this->table."` " . 
#          "SET `".$this->fields["left"]."` = `".$this->fields["left"]."` - ".$ndif." " . 
#        "WHERE `".$this->fields["left"]."` > ".$node[$this->fields["right"]];
#      $sql[] = "" . 
#        "UPDATE `".$this->table."` " . 
#          "SET `".$this->fields["right"]."` = `".$this->fields["right"]."` - ".$ndif." " . 
#        "WHERE " . 
#          "`".$this->fields["right"]."` > ".$node[$this->fields["left"]]." AND " . 
#          "`".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ";
#    }
#    // Preparing new parent
#    $sql[] = "" . 
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["position"]."` = `".$this->fields["position"]."` + 1 " . 
#      "WHERE " . 
#        "`".$this->fields["parent_id"]."` = ".$ref_id." AND " . 
#        "`".$this->fields["position"]."` >= ".$position." " . 
#        ( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");
#
#    $ref_ind = $ref_id === 0 ? (int)$rchildren[count($rchildren) - 1][$this->fields["right"]] + 1 : (int)$ref_node[$this->fields["right"]];
#    $ref_ind = max($ref_ind, 1);
#
#    $self = ($node !== false && !$is_copy && (int)$node[$this->fields["parent_id"]] == $ref_id && $position > $node[$this->fields["position"]]) ? 1 : 0;
#    foreach($rchildren as $k => $v) {
#      if($v[$this->fields["position"]] - $self == $position) {
#        $ref_ind = (int)$v[$this->fields["left"]];
#        break;
#      }
#    }
#    if($node !== false && !$is_copy && $node[$this->fields["left"]] < $ref_ind) {
#      $ref_ind -= $ndif;
#    }
#
#    $sql[] = "" . 
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["left"]."` = `".$this->fields["left"]."` + ".$ndif." " . 
#      "WHERE " . 
#        "`".$this->fields["left"]."` >= ".$ref_ind." " . 
#        ( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");
#    $sql[] = "" . 
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["right"]."` = `".$this->fields["right"]."` + ".$ndif." " . 
#      "WHERE " . 
#        "`".$this->fields["right"]."` >= ".$ref_ind." " . 
#        ( $is_copy ? "" : " AND `".$this->fields["id"]."` NOT IN (".implode(",", $node_ids).") ");
#
#    $ldif = $ref_id == 0 ? 0 : $ref_node[$this->fields["level"]] + 1;
#    $idif = $ref_ind;
#    if($node !== false) {
#      $ldif = $node[$this->fields["level"]] - ($ref_node[$this->fields["level"]] + 1);
#      $idif = $node[$this->fields["left"]] - $ref_ind;
#      if($is_copy) {
#        $sql[] = "" . 
#          "INSERT INTO `".$this->table."` (" . 
#            "`".$this->fields["parent_id"]."`, " . 
#            "`".$this->fields["position"]."`, " . 
#            "`".$this->fields["left"]."`, " . 
#            "`".$this->fields["right"]."`, " . 
#            "`".$this->fields["level"]."`" . 
#          ") " . 
#            "SELECT " . 
#              "".$ref_id.", " . 
#              "`".$this->fields["position"]."`, " . 
#              "`".$this->fields["left"]."` - (".($idif + ($node[$this->fields["left"]] >= $ref_ind ? $ndif : 0))."), " . 
#              "`".$this->fields["right"]."` - (".($idif + ($node[$this->fields["left"]] >= $ref_ind ? $ndif : 0))."), " . 
#              "`".$this->fields["level"]."` - (".$ldif.") " . 
#            "FROM `".$this->table."` " . 
#            "WHERE " . 
#              "`".$this->fields["id"]."` IN (".implode(",", $node_ids).") " . 
#            "ORDER BY `".$this->fields["level"]."` ASC";
#      }
#      else {
#        $sql[] = "" . 
#          "UPDATE `".$this->table."` SET " . 
#            "`".$this->fields["parent_id"]."` = ".$ref_id.", " . 
#            "`".$this->fields["position"]."` = ".$position." " . 
#          "WHERE " . 
#            "`".$this->fields["id"]."` = ".$id;
#        $sql[] = "" . 
#          "UPDATE `".$this->table."` SET " . 
#            "`".$this->fields["left"]."` = `".$this->fields["left"]."` - (".$idif."), " . 
#            "`".$this->fields["right"]."` = `".$this->fields["right"]."` - (".$idif."), " . 
#            "`".$this->fields["level"]."` = `".$this->fields["level"]."` - (".$ldif.") " . 
#          "WHERE " . 
#            "`".$this->fields["id"]."` IN (".implode(",", $node_ids).") ";
#      }
#    }
#    else {
#      $sql[] = "" . 
#        "INSERT INTO `".$this->table."` (" . 
#          "`".$this->fields["parent_id"]."`, " . 
#          "`".$this->fields["position"]."`, " . 
#          "`".$this->fields["left"]."`, " . 
#          "`".$this->fields["right"]."`, " . 
#          "`".$this->fields["level"]."` " . 
#          ") " . 
#        "VALUES (" . 
#          $ref_id.", " . 
#          $position.", " . 
#          $idif.", " . 
#          ($idif + 1).", " . 
#          $ldif. 
#        ")";
#    }
#    foreach($sql as $q) { $this->db->query($q); }
#    $ind = $this->db->insert_id();
#    if($is_copy) $this->_fix_copy($ind, $position);
#    return $node === false || $is_copy ? $ind : true;
#  }
  
  def self.remove_node(id)
    the_node = find(id)
    left = the_node.left
    right = the_node.right
    dif = right - left + 1
    pid = the_node.parent_id
    pos = the_node.position
    
    #  deleting node and its children
    the_node.delete_branch
    # shift left indexes of nodes right of the node
    update_all("left = left - #{dif}", "left > #{right}")
    # shift right indexes of nodes right of the node and the node's parents
    update_all("right = right - #{dif}", "right > #{left}")  
    # Update position of siblings below the deleted node
    update_all("position = position -1", "parent_id = #{pid} AND position > #{pos}")
    
    result = { :status => 1 }         
    return result.to_json
  end
  
#  function remove_node($data) {
#    $id = parent::_remove((int)$data["id"]);
#    return "{ \"status\" : 1 }";
#  }
#
#  
#  function _remove($id) {
#    if((int)$id === 1) { return false; }
#    $data = $this->_get_node($id);
#    $lft = (int)$data[$this->fields["left"]];
#    $rgt = (int)$data[$this->fields["right"]];
#    $dif = $rgt - $lft + 1;
#
#    // deleting node and its children
#    $this->db->query("" . 
#      "DELETE FROM `".$this->table."` " . 
#      "WHERE `".$this->fields["left"]."` >= ".$lft." AND `".$this->fields["right"]."` <= ".$rgt
#    );
#    // shift left indexes of nodes right of the node
#    $this->db->query("".
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["left"]."` = `".$this->fields["left"]."` - ".$dif." " . 
#      "WHERE `".$this->fields["left"]."` > ".$rgt
#    );
#    // shift right indexes of nodes right of the node and the node's parents
#    $this->db->query("" . 
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["right"]."` = `".$this->fields["right"]."` - ".$dif." " . 
#      "WHERE `".$this->fields["right"]."` > ".$lft
#    );
#
#    $pid = (int)$data[$this->fields["parent_id"]];
#    $pos = (int)$data[$this->fields["position"]];
#
#    // Update position of siblings below the deleted node
#    $this->db->query("" . 
#      "UPDATE `".$this->table."` " . 
#        "SET `".$this->fields["position"]."` = `".$this->fields["position"]."` - 1 " . 
#      "WHERE `".$this->fields["parent_id"]."` = ".$pid." AND `".$this->fields["position"]."` > ".$pos
#    );
#    return true;
#  }
  
  def rename_node(params)
    node = find(params[:id])
    if node.update_attributes(params)
      return { :status => 0 }   
    end    
  end  
  
  def move_node
    
  end
   
#  function move_node($data) { 
#    $id = parent::_move((int)$data["id"], (int)$data["ref"], (int)$data["position"], (int)$data["copy"]);
#    if(!$id) return "{ \"status\" : 0 }";
#    if((int)$data["copy"] && count($this->add_fields)) {
#      $ids  = array_keys($this->_get_children($id, true));
#      $data = $this->_get_children((int)$data["id"], true);
#
#      $i = 0;
#      foreach($data as $dk => $dv) {
#        $s = "UPDATE `".$this->table."` SET `".$this->fields["id"]."` = `".$this->fields["id"]."` "; 
#        foreach($this->add_fields as $k => $v) {
#          if(isset($dv[$k]))  $s .= ", `".$this->fields[$v]."` = \"".$this->db->escape($dv[$k])."\" ";
#          else        $s .= ", `".$this->fields[$v]."` = `".$this->fields[$v]."` ";
#        }
#        $s .= "WHERE `".$this->fields["id"]."` = ".$ids[$i];
#        $this->db->query($s);
#        $i++;
#      }
#    }
#    return "{ \"status\" : 1, \"id\" : ".$id." }";
#  }  
  
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
    root = create(:parent_id => 0,  :position => 2, :left => 1,  :right => 14, :level => 0, :title => 'ROOT')
    create(:parent_id => root.id,   :position => 0, :left => 2,  :right => 11, :level => 1, :title => 'C:',         :ntype => 'drive')
    create(:parent_id => root.id+1, :position => 0, :left => 3,  :right => 6,  :level => 2, :title => '_demo',     :ntype => 'folder')
    create(:parent_id => root.id+2, :position => 0, :left => 4,  :right => 5,  :level => 3, :title => 'index.html', :ntype => 'default')
    create(:parent_id => root.id+1, :position => 1, :left => 7,  :right => 10, :level => 2, :title => '_docs',      :ntype => 'folder')
    create(:parent_id => root.id,   :position => 1, :left => 12, :right => 13, :level => 1, :title => 'D:',         :ntype => 'drive')
    create(:parent_id => root.id+4, :position => 0, :left => 8,  :right => 9,  :level => 3, :title => 'zmei.html',  :ntype => 'default')
    return { :status => 0 }   
  end 
  
end
