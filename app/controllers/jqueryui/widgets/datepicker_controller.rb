class Jqueryui::Widgets::DatepickerController < ApplicationController
  layout 'blueprint', :except => [:localization] 
  protect_from_forgery
  
  def localization
    render :layout => "localization" 
  end
  
end
