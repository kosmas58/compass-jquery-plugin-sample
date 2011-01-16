class Mobile::Experiments::ListItemsController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  make_resourceful do
    actions :all
    
    before :update do
      puts "aa"
      #@current_object.color = params[:color].sub(/#/,'').hex
    end
  
    response_for :index do |format|
      format.html 
      format.json do 
        render :json => @current_objects
      end
    end

  
  
#  
#    def create
#      ListItem.create!(:name => params[:name]) if !params[:name].blank?
#      redirect_to :action => :index
#    end
#    
#    def update
#      item = ListItem.find(params[:id])
#      puts("aa")
#    end
#    
#    def destroy
#      
#    end
  end
end
