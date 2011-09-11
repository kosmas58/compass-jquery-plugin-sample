class Ui::Widgets::SelectmenuController < ApplicationController
  protect_from_forgery

  layout 'application' , :except => [ :get_data ]
end
