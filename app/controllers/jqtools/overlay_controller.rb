class Jqtools::OverlayController < ApplicationController
  layout 'jqtools' 
  
  protect_from_forgery

  def external
    render :partial => "external", :layout => false
  end  
end
