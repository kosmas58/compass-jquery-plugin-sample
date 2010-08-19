class DemoTree < ActiveRecord::Base
  acts_as_tree_on_steroids :family_level => 1
  
  def self.get_children(id)
    node = find(id)
    node.ancestors
  end
  
  
#  function get_children($data) {
#    $tmp = $this->_get_children((int)$data["id"]);
#    if((int)$data["id"] === 1 && count($tmp) === 0) {
#      $this->_create_default();
#      $tmp = $this->_get_children((int)$data["id"]);
#    }
#    $result = array();
#    if((int)$data["id"] === 0) return json_encode($result);
#    foreach($tmp as $k => $v) {
#      $result[] = array(
#        "attr" => array("id" => "node_".$k, "rel" => $v[$this->fields["type"]]),
#        "data" => $v[$this->fields["title"]],
#        "state" => ((int)$v[$this->fields["right"]] - (int)$v[$this->fields["left"]] > 1) ? "closed" : ""
#      );
#    }
#    return json_encode($result);
#  }
  
end
