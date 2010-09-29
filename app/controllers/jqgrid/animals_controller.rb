class Jqgrid::AnimalsController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @example = (params[:example] || "05")
    mylist = "example#{@example}".to_sym
    if request.xhr?
      if params[:id].present?
        render :json => Player.find(params[:id]).animals.find(:all).to_subgrid_json([:id,:name])
      elsif params[:details_for].present?
        if params[:_search] == "true" 
          records = Animal.find_for_grid(mylist, params)
        else
          records = Player.find(params[:details_for]).animals.find(:all)
        end
        render :json => Animal.grid(mylist).encode_records(records)
      else
        #records = Animal.find_for_grid(mylist, params)
        render :json => Animal.grid(mylist).encode_records(nil)
      end
    else
      render :nothing => true, :status => 200
    end
  end
end
