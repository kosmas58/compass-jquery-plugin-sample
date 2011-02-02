class Ui::Widgets::SelectmenuController < ApplicationController
  layout 'ui', :except => [:get_data] 
  
  protect_from_forgery
end
