class Jqgrid::DemoController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    @demo = (params[:demo] || "01")
    model = (params[:model] || "invheader").capitalize!
    mylist = "demo#{@demo}".to_sym
    if request.xhr?
      records = Object.const_get(model).find_for_grid(mylist, params)
      if @demo == "01"
        render :xml => Object.const_get(model).grid(mylist).encode_records(records)
      else
        render :json => Object.const_get(model).grid(mylist).encode_records(records)
      end
    else
      @grid = Object.const_get(model).grid(mylist)
    end    
  end
end
