class Mobile::Experiments::ListMakerController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  def index
    refresh_list()
  end

  def create
    ListItem.create!(:name => params[:name])
    refresh_list()
  end

  def refresh_list
    @items = ListItem.all
    respond_to do |format|
      format.html 
      format.json do 
        render :json => @items
      end
    end
  end

end
