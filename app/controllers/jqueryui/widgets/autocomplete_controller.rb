class Jqueryui::Widgets::AutocompleteController < ApplicationController
  include AutoCompleteJquery      
  
  layout 'jqueryui'
  
  protect_from_forgery
  
  auto_complete_for :bird, :name
end
