class Mobile::Experiments::ListItemsController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  make_resourceful do
    actions :index, :create, :update, :destroy
    
    after :create do
      @list_item = current_model.find_by_id(current_object.id)
    end
    
    
    before :update do
      puts "aa"
      #@current_object.color = params[:color].sub(/#/,'').hex
    end
    
    after :update do
      puts "bb"
      #@current_object.color = params[:color].sub(/#/,'').hex
    end
  
    response_for :index do |format|
      format.html 
      format.json do 
        render :json => @current_objects
      end
    end

    response_for :create do |format|
      format.html 
      format.json {
        render :json => @list_item.to_json
      }
    end

    response_for :update do |format|
      puts "cc"
      format.json do 
        render :nothing => true, :status => 200
      end
    end

    response_for :destroy do |format|
      format.json do 
        render :nothing => true, :status => 200
      end
    end
  end
end
