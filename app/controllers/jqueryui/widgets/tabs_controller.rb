class Jqueryui::Widgets::TabsController < ApplicationController
  layout 'jqueryui'
  
  protect_from_forgery
  
  def content1
    render :partial => "content1", :layout => false
  end
  
  def content2
    render :partial => "content2", :layout => false
  end
end
