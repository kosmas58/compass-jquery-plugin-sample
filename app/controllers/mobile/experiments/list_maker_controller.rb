class Mobile::Experiments::ListMakerController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  def index
    @items = ListItem.all
    respond_to do |format|
      format.html 
      format.json do 
        render :json => @items
      end
    end
  end

  def create
    ListItem.create!(:name => params[:name]) if params[:name]
    @items = ListItem.all
    render :json => @items
  end
end
