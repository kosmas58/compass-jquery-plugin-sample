class Jqical::CalendarsController < ApplicationController
  layout 'jqical'
  
  protect_from_forgery
  
  make_resourceful do
    actions :all
    
    before :new, :edit do
      @color = @current_object.color.to_s(16)
    end   
    
    before :create, :update do
      params[:calendar][:color] = params[:color].sub(/#/,'').hex
    end
    
    response_for :show do |format|
      format.html
      format.ics do
        render(:text => @current_object.to_ics())
      end
    end
    
    response_for :create, :update, :destroy do |format|
      format.html { redirect_to jqical_calendars_path }
    end
    
  end
end
