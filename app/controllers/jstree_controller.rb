class JstreeController < ApplicationController
  layout 'jstree' 
  
  protect_from_forgery
  
  def server
    
    if params[:operation].present?
      tree = Jstree.get_children(params[:id])
    elsif params[:reconstruct].present?
      puts reconstruct
    elsif params[:analyze].present?  
      puts reconstruct
    end  
    
    
    json1 = 
    '[
      {
        "attr": {"id":"node_2","rel":"drive"},
        "data":"C:","state":"closed"
      },
      {
        "attr":{"id":"node_6","rel":"drive"},
        "data":"D:","state":""
      }
     ]'
    
    render :json => json1, :layout => false    
  end
end
