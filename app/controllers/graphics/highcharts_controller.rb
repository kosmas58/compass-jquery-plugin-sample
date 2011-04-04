class Graphics::HighchartsController < ApplicationController
  layout 'highcharts'

  protect_from_forgery

  def default
    example = params[:example] || "line_basic"
    render :partial => "default", :locals => {:example => example}
  end

  def grid
    example = params[:example] || "line_basic"
    render :partial => "grid", :locals => {:example => example}
  end

  def skies
    example = params[:example] || "line_basic"
    render :partial => "skies", :locals => {:example => example}
  end

  def gray
    example = params[:example] || "line_basic"
    render :partial => "gray", :locals => {:example => example}
  end

  def blue
    example = params[:example] || "line_basic"
    render :partial => "blue", :locals => {:example => example}
  end

  def green
    example = params[:example] || "line_basic"
    render :partial => "green", :locals => {:example => example}
  end

end
