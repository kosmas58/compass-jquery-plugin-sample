class Jqgrid::PlayersController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "01")
    if request.xhr?
      records = Player.find_for_grid :grid, params
      render :xml => Player.grid.encode_records(records)
    else
      @grid = Player.grid :grid
    end    
  end
end
