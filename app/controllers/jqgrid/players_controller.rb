class Jqgrid::PlayersController < ApplicationController
  layout 'jqgrid'

  protect_from_forgery

  def index
    fetch_params(request)
    if @datatype != :local
      if request.xhr?
        records = Player.find_for_grid(@mylist, params)
        data = Player.grid(@mylist).encode_records(records)
        case @datatype
          when :json
            render :json => data
          when :xml
            render :xml => data
        end
      else
        @grid_players = Player.grid(@mylist)
        if @example == "05"
          @grid_animals = Animal.grid(@mylist)
        end
      end
    end
  end

  def create
    fetch_params(request);
    if request.xhr?
      params[:id] = nil
      object_params = Player.grid(@mylist).member_params(params)
      @this = Player.new(object_params)
      # must return nothing on success (until we setup a format for returning ok vs error)
      msg = ""
      unless @this.save
        @this.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end
      end
      render :text => msg
    else
      @this = Player.new(params[:player])
      if @this.save
        flash[:notice] = "Successfully created player."
        redirect_to @this
      else
        render :action => 'new'
      end
    end
  end

  def update
    fetch_params(request);
    @this = Player.find(params[:id])
    if request.xhr?
      object_params = Player.grid(@mylist).member_params(params)
      msg = "success"
      unless @this.update_attributes(object_params)
        @this.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end
      end
      render :text => msg
    else
      if @this.update_attributes(params[:player])
        flash[:notice] = "Successfully updated player."
        redirect_to @this
      else
        render :action => 'edit'
      end
    end
  end

  def destroy
    # NOTE: if allow multiselect should check :id for string of comma delimited id's 
    @this = Player.find(params[:id])
    @this.destroy
    if request.xhr?
      render :nothing => true
    else
      flash[:notice] = "Successfully destroyed player."
      redirect_to 'players_url'
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
    @example = (params[:example] || "01")
    @mylist = "example#{@example}".to_sym
  end
end
