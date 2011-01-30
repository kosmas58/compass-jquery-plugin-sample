class Ui::Widgets::AutocompleteController < ApplicationController
  include JqueryAutoComplete
  layout 'ui'
  protect_from_forgery
  auto_complete_for :bird, :name
end
