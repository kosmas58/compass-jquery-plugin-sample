class Widgets::MarkItUpController < ApplicationController
  protect_from_forgery

  def preview
    render :partial =>  "shared/mark_it_up_preview", :layout => false
  end
  
end
