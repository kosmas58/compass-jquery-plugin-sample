class Widgets::Ical::AnytimeController < ApplicationController
  layout 'ical'

  protect_from_forgery

  def ajaxdemo
    render :text => params['AjaxDemo'].gsub(/\d+,/, "1")
  end
end
