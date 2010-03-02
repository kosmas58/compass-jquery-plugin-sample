class Jqgrid::PlayersController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    if request.xhr?
      records = Player.find_for_grid :grid, params
      render :xml => Player.grid.encode_records(records)
    else
      @example = (params[:example] || "01")
      @grid = Player.grid
    end    
  end
end
