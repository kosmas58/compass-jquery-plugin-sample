class Jqgrid::DemoController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    fetch_params(request);
    
    if @demo == "demo0104"
      ;
    else    
      if request.xhr?
        records = Object.const_get(@object).find_for_grid(@mylist, params)
        data = Object.const_get(@object).grid(@mylist).encode_records(records)
        if @demo == "demo0101"
          render :xml => data
        else
          render :json => data
        end
      else
        @grid = Object.const_get(@object).grid(@mylist)
      end
    end
  end
  
  def create
    fetch_params(request);
    if request.xhr?
      params[:id] = nil
      object_params = Object.const_get(@object).grid(@mylist).member_params(params)
      @this = Object.const_get(@object).new(object_params)
      # must return nothing on success (until we setup a format for returning ok vs error)
      msg = ""
      unless @this.save
        @this.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end        
      end
      render :text => msg
    else
      @this = Object.const_get(@object).new(params[@model])
      if @this.save
        flash[:notice] = "Successfully created #{@model}."
        redirect_to @this
      else
        render :action => 'new'
      end
    end    
  end
  
  def update
    fetch_params(request);
    @this = Object.const_get(@object).find(params[:id])
    if request.xhr?
      object_params = Object.const_get(@object).grid(@mylist).member_params(params)
      msg = "success"
      unless @this.update_attributes( object_params )
        @this.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end        
      end
      render :text => msg
    else
      if @this.update_attributes(params[@model])
        flash[:notice] = "Successfully updated #{@model}."
        redirect_to @this
      else
        render :action => 'edit'
      end
    end
  end
  
  def destroy
    # NOTE: if allow multiselect should check :id for string of comma delimited id's 
    @this = Object.const_get(@object).find(params[:id])
    @this.destroy
    if request.xhr?
      render :nothing => true
    else
      flash[:notice] = "Successfully destroyed #{@model}."
      redirect_to '#{@model}s_url'       
    end
  end 
  
  private 
  
  def fetch_params(request)
    @model = (params[:model] || "invheader")
    @object = @model.capitalize! 
    if request.xhr?
      @demo = (params[:grid] || "demo0101")
      @mylist = "#{@demo}".to_sym
    else
      @demo = (params[:demo] || "0101")
      @mylist = "demo#{@demo}".to_sym
    end
  end
end
