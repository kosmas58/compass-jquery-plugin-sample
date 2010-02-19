class UsersController < ApplicationController
  layout 'blueprint'
  
  protect_from_forgery :except => [:post_data]
end
