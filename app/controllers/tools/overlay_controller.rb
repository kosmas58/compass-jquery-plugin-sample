class Tools::OverlayController < ApplicationController
  layout 'tools'

  protect_from_forgery

  def external
    render :partial => "external", :layout => false
  end
end
