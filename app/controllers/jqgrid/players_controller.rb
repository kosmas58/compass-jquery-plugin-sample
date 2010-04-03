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
  
  def create
    if request.xhr?
      player_params = Player.grid.member_params(params)
      @player = Player.new( player_params )
      # must return nothing on success (until we setup a format for returning ok vs error)
      msg = ""
      unless @player.save
        @player.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end        
      end
      render :text => msg
    else
      @player = Player.new(params[:player])
      if @player.save
        flash[:notice] = "Successfully created player."
        redirect_to @player
      else
        render :action => 'new'
      end
    end    
  end
  
  def update
    @player = Player.find(params[:id])
    if request.xhr?
      player_params = Player.grid.member_params(params)
      msg = "success"
      unless @player.update_attributes( player_params )
        @player.errors.entries.each do |error|
          msg << "<strong>#{error[0]}</strong> : #{error[1]}<br/>"
        end        
      end
      render :text => msg
    else
      if @player.update_attributes(params[:player])
        flash[:notice] = "Successfully updated player."
        redirect_to @player
      else
        render :action => 'edit'
      end
    end
  end
  
  def destroy
    # NOTE: if allow multiselect should check :id for string of comma delimited id's 
    @player = Player.find(params[:id])
    @player.destroy
    if request.xhr?
      render :nothing => true
    else
      flash[:notice] = "Successfully destroyed player."
      redirect_to players_url       
    end
  end  
end
