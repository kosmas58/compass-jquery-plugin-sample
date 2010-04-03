class Jqgrid::PlayersController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "01")
    mylist = "example#{@example}".to_sym
    if request.xhr?
      records = Player.find_for_grid(mylist, params)
      render :json => Player.grid(mylist).encode_records(records)
    else
      @grid_players = Player.grid(mylist)
      if @example == "05"
        @grid_animals = Animal.grid(mylist)
      end
    end    
  end
end
