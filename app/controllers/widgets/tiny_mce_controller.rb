class Widgets::TinyMceController < ApplicationController
  layout 'tiny_mce'

  protect_from_forgery

  def dump
    puts "wiili"
  end
end
