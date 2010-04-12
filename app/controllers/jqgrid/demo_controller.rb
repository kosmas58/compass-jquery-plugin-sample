class Jqgrid::DemoController < ApplicationController
  layout 'jqgrid'
  
  protect_from_forgery
  
   def index
    fetch_params(request);    
    if @datatype != :local
      if request.xhr?        
        if params[:details_for].present?
          if params[:_search] == "true"
            records = @object.find_for_grid(@mylist, params);
          elsif @demo == "demo0302"
            records = Invheader.find(params[:details_for]).invlines.find(:all); 
          end
        elsif params[:subgrid]
          ;
        else
          records = @object.find_for_grid(@mylist, params)
        end
        case @datatype
          when :json
            render :json => @object.grid(@mylist).encode_records(records)
          when :xml
            render :xml => @object.grid(@mylist).encode_records(records)
            #render :partial => "#{@model.downcase}.xml.builder", :layout => false
        end
      else
        @grid = @object.grid(@mylist)
        if @demo == "0302"
          @grid_details = Invline.grid(@mylist)
        end
      end
    end
  end
  
  def create
    fetch_params(request);
    if request.xhr?
      params[:id] = nil
      object_params = @object.grid(@mylist).member_params(params)
      @this = @object.new(object_params)
      # must return nothing on success (until we setup a format for returning ok vs error)
      msg = ""
      unless @this.save
        @this.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end        
      end
      render :text => msg
    else
      @this = @object.new(params[@model])
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
    @this = @object.find(params[:id])
    if request.xhr?
      object_params = @object.grid(@mylist).member_params(params)
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
    fetch_params(request);
    @this = @object.find(params[:id])
    @this.destroy
    if request.xhr?
      render :nothing => true
    else
      flash[:notice] = "Successfully destroyed #{@model}."
      redirect_to '#{@model}s_url'       
    end
  end 
  
  def books
    respond_to do |format|
      format.xml { render :file =>  File.join(RAILS_ROOT, 'app/views/jqgrid/demo/books.xml' ) }
    end
  end
  
  private 
  
  def fetch_params(request)    
    case params[:datatype]
      when :json, "json"
        @datatype = params[:datatype] = :json
      when :xml, "xml"        
        @datatype = params[:datatype] = :xml
      when :local, "local"        
        @datatype = params[:datatype] = :local
      else       
        @datatype = params[:datatype] = :json
    end 
    @model = (params[:model] || "invheader")
    @object = Object.const_get(@model.capitalize!)
    if request.xhr?
      @demo = (params[:grid] || "demo0101")
      @mylist = "#{@demo}".to_sym
    else
      @demo = (params[:demo] || "0101")
      @mylist = "demo#{@demo}".to_sym
    end
  end
end
