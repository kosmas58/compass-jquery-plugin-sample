class Jqgrid::AnimalsController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "05")
    mylist = "example#{@example}".to_sym
    if request.xhr?
      if params[:id].present?
        records = Player.find(params[:id]).animals.find(:all)
      else
        records = Animal.find_for_grid(mylist, params)
      end
      render :json => Animal.grid(mylist).encode_records(records)
    else
      render :layout => false
    end    
  end
end
