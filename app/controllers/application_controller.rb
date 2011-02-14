# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details 

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  before_filter :set_locale
  before_filter :set_theme

  def set_locale
    # update session if passed
    session[:locale] = params[:locale] if params[:locale]

    # set locale based on session or default 
    I18n.locale = session[:locale] || I18n.default_locale

    # for i18n-js
    SimplesIdeias::I18n.export! if RAILS_ENV == "development"
  end

  def set_theme
    if cookies['jquery-ui-theme']
      session[:theme] = cookies['jquery-ui-theme'].downcase.gsub(/ /, "-") + ".css"
    else
      session[:theme] = "start.css"
    end
  end
end
