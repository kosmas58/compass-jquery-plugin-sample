class Jqgrid::DemoController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    model = (params[:model] || "invheader").capitalize!
    if request.xhr?
      @demo = (params[:grid] || "demo0101")
      mylist = "#{@demo}".to_sym
      records = Object.const_get(model).find_for_grid(mylist, params)
      if @demo == "demo0101"
        render :xml => Object.const_get(model).grid(mylist).encode_records(records)
      else
        render :json => Object.const_get(model).grid(mylist).encode_records(records)
      end
    else
      @demo = (params[:demo] || "0101")
      mylist = "demo#{@demo}".to_sym
      @grid = Object.const_get(model).grid(mylist)
    end    
  end
end
