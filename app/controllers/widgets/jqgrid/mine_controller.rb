class Widgets::Jqgrid::MineController < ApplicationController
  protect_from_forgery

  def index
    @demo = params[:demo] || "contextmenu1"
  end
end
