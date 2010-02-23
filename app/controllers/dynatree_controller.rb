class DynatreeController < ApplicationController
  layout 'dynatree', :except => [:iframe_1] 
  
  protect_from_forgery
end
