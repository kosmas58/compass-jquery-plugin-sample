class Widgets::Tools::OverlayController < ApplicationController
  protect_from_forgery

  def external
    render :partial => "external", :layout => false
  end
end
