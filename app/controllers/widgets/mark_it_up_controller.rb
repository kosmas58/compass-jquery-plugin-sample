class Widgets::MarkItUpController < ApplicationController
  protect_from_forgery

  def preview
    render :partial =>  "shared/mark_it_up.preview", :layout => false
  end

  def preview_blue
    render :partial =>  "shared/mark_it_up.preview.blue", :layout => false
  end
end
