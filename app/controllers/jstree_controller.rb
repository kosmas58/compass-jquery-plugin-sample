class JstreeController < ApplicationController
  layout 'jstree' 
  
  protect_from_forgery

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
    render :nothing => true, :status => 200
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
