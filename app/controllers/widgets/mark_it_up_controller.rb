class Widgets::MarkItUpController < ApplicationController
  protect_from_forgery

  def examples
    @example = params[:example] || "basic"
  end

  def show
    @example = params[:example] || "basic"
    @skin = params[:skin] || "markitup"
    render :partial => "show"
  end

  def preview
    render :partial =>  "shared/mark_it_up_preview", :layout => false
  end
  
end
