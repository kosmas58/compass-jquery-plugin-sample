class Widgets::TinyMceController < ApplicationController
  layout 'tiny_mce'

  protect_from_forgery

  def dump
    puts "wiili"
    render :nothing => true, :status => 200
  end
end
