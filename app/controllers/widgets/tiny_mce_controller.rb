class Widgets::TinyMceController < ApplicationController
  protect_from_forgery

  def dump
    render :text => "Well done!", :status => 200
  end
end
