class DemoTree < ActiveRecord::Base
  acts_as_tree_on_steroids :family_level => 1
  
  def self.get_children(id)
    node = find(id)
    children = node.children
    result = Array.new
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
  
  def self.create_node(params)
    tree = DemoTree.create()
    tree.parent_id = params[:id]
    tree.title     = params[:title]
    tree.ntype     = params[:type]
    if DemoTree.save    
      return { :status => 0, :id => tree.id }   
    else
      return { :status => 0 }   
    end    
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
  
  
end
