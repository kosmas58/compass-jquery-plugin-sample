class JstreeController < ApplicationController
  layout 'jstree' 
  
  protect_from_forgery
  
  def data
    json = 
    '[
      { "data" : "A node", "children" : [ { "data" : "Only child", "state" : "closed" } ], "state" : "open" },
        "Ajax node"
    ]'
    
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.html do
        render "_html_data", :layout => false
      end      
      format.json do
        render :json => json, :layout => false
      end
      format.xml do
        if params[:type] == :nested
          render :partial => "nested.xml.builder", :layout => false
        else
          render :partial => "flat.xml.builder", :layout => false
        end  
      end
    end
  end

  def get_children
    tree = DemoTree.get_children(params[:id])
    render :json => tree.to_json, :layout => false   
  end
  
  def search    
    data =
    '[
      "Ajax node 1",
      "Ajax node 2",
      "TARGET",
      "Ajax node 4"
    ]'
    
    result = '[ "#root_node" ]'
    
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
   
      format.json do
        case params[:search_str]
          when "_data"
            render :json => data, :layout => false
          when "_result"
            render :json => result, :layout => false
          else
            nodes = DemoTree.search(params[:search_str])
            render :json => nodes.to_json, :layout => false 
        end  
      end
    end
  end
  
  def create_node
    result = DemoTree.create_node(params)
    render :json => result.to_json, :layout => false 
  end
  
  def remove_node
    result = DemoTree.remove_node(params[:id])
    render :json => result.to_json, :layout => false 
  end
  
  def rename_node
    result = DemoTree.rename_node(params)
    render :json => result.to_json, :layout => false
  end
  
  def move_node
    result = DemoTree.move_node(params)
    render :json => result.to_json, :layout => false
  end
  
  def reconstruct
    render :nothing => true, :status => 200
  end  
  
  def analyze
    render :nothing => true, :status => 200
  end  
  
  def rebuild
    result = DemoTree.rebuild_demo()
    render :json => result.to_json, :layout => false 
  end
end
