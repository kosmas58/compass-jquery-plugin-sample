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
        if params[:type] == "nested"
          render :partial => "nested.xml.builder", :layout => false
        else
          render :partial => "flat.xml.builder", :layout => false
        end  
      end
    end
  end

  def get_children
    tree = DemoTree.get_children(params[:id])
    render :json => tree, :layout => false   
  end
  
  def search
    nodes = DemoTree.search(params[:search_str])
    render :json => nodes, :layout => false 
  end
  
  def create_node
    result = DemoTree.create_node(params)
    render :json => result, :layout => false 
  end
  
  def remove_node
    result = DemoTree.remove_node(params[:id])
    render :json => result, :layout => false 
  end
  
  def rename_node
    result = DemoTree.create_node(params)
    render :json => result, :layout => false
  end
  
  def move_node
    render :nothing => true, :status => 200
  end
  
  def reconstruct
    render :nothing => true, :status => 200
  end  
  
  def analyze
    render :nothing => true, :status => 200
  end  
  
  def rebuild
    result = DemoTree.rebuild_demo()
    render :json => result, :layout => false 
  end
end
