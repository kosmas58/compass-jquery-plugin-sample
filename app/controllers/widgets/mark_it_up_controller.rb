class Widgets::MarkItUpController < ApplicationController
  protect_from_forgery

  def preview
    render :partial =>  "shared/mark_it_up.preview", :layout => false
  end

  def preview_blue
    render :partial =>  "shared/mark_it_up.preview.blue", :layout => false
  end

  def parse_markdown
    render :partial =>  "shared/mark_it_up.parsed.preview.blue", :layout => false, :locals => { :parsed_content => BlueCloth.new(params[:data]).to_html }
  end

  def parse_textile
    render :partial =>  "shared/mark_it_up.parsed.preview.blue", :layout => false, :locals => { :parsed_content => RedCloth.new(params[:data]).to_html }
  end
end
