class Jqgrid::AnimalsController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "05")
    mylist = "example#{@example}".to_sym
    if request.xhr?
      if params[:details_for].present?
        if params[:_search] == "true" 
          records = Animal.find_for_grid(mylist, params)
        else
          records = Player.find(params[:details_for]).animals.find(:all)
        end
      else
        records = Animal.find_for_grid(mylist, params)
      end
      render :json => Animal.grid(mylist).encode_records(records)
    else
      render :layout => false
    end    
  end
end
