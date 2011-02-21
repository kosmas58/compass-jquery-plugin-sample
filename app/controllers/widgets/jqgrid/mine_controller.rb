class Widgets::Jqgrid::MineController < ApplicationController
  layout 'jqgrid'

  protect_from_forgery

  def index
    @demo = params[:demo] || "contextmenu1"
  end
end
