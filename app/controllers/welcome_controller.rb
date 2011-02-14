class WelcomeController < ApplicationController
  layout 'welcome', :except => [:index]

  protect_from_forgery

  def index
    respond_to do |format|
      format.html { render :layout => 'blueprint' }
    end
  end
end
