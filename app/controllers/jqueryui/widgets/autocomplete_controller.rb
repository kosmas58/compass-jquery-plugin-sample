class Jqueryui::Widgets::AutocompleteController < ApplicationController
  include JqueryAutoComplete
  
  layout 'jqueryui'
  
  protect_from_forgery
  
  auto_complete_for :bird, :name
end
