class Widgets::MarkItUpController < ApplicationController
  protect_from_forgery

  def examples
    @example = params[:example] || "basic"
  end

  def markitup
    example = params[:example] || "basic"
    render :partial => "markitup", :locals => {:example => example}
  end

  def simple
    example = params[:example] || "basic"
    render :partial => "simple", :locals => {:example => example}
  end

  def aqua
    example = params[:example] || "basic"
    render :partial => "aqua", :locals => {:example => example}
  end

  def live
    example = params[:example] || "basic"
    render :partial => "live", :locals => {:example => example}
  end

  def jtag
    example = params[:example] || "basic"
    render :partial => "jtag", :locals => {:example => example}
  end

  def preview
    render :partial =>  "shared/mark_it_up_preview", :layout => false
  end
  
end
