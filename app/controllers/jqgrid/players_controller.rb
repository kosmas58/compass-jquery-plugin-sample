class Jqgrid::PlayersController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "01")
    mylist = "example#{@example}".to_sym
    if request.xhr?
      records = Player.find_for_grid(mylist, params)
      render :xml => Player.grid(mylist).encode_records(records)
    else
      @grid = Player.grid(mylist)
    end    
  end
end
