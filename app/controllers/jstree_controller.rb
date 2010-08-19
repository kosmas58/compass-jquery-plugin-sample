class JstreeController < ApplicationController
  layout 'jstree' 
  
  protect_from_forgery
  
  def server_get    
    if params[:operation].present?
      tree = DemoTree.get_children(params[:id])
    elsif params[:reconstruct].present?
      puts reconstruct
    elsif params[:analyze].present?  
      puts reconstruct
    end        
    render :json => tree, :layout => false    
  end
  
  def server_post    
    if params[:operation].present?      
      DemoTree.send("#{ params[:operation]}".to_sym, params) 
      
      


      #echo $jstree->{$_REQUEST["operation"]}($_REQUEST);
    end    
  end
end
