class Mobile::Experiments::ConverterController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  def manifest
    manifest = "CACHE MANIFEST\n\n" +
               "mobile/experiments/converter\n" +
               "stylesheets/compiled/jquery/mobile/default.css\n" +
               "javascripts/jquery.min.js\n" +
               "javascripts/jquery.tmpl.min.js\n" +
               "javascripts/jquery.mobile.min.js\n" +
               "javascripts/locales.js\n" +
               "javascripts/common.js\n\n" +
               "NETWORK:\n/"
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => manifest, :layout => false
  end
end
