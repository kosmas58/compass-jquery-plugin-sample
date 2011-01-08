class Jqtouch::Ext::OfflineController < ApplicationController
  layout 'jqt_offline'
  
  protect_from_forgery
  
  def manifest
    manifest = "CACHE MANIFEST\n\n" +
               "jqtouch/ext/offline\n" +
               "images/jquery/touch/jqtouch.png\n" +
               "images/jquery/touch/jqt/toolbar.png\n" +
               "images/jquery/touch/jqt/back_button.png\n" +
               "images/jquery/touch/jqt/toolbar.png\n" +
               "stylesheets/compiled/jquery/touch/jqtouch.css\n" +
               "stylesheets/compiled/jquery/touch/jqt.css\n" +
               "javascripts/jquery.min.js\n" +
               "javascripts/jquery.jqtouch.min.js\n" +
               "javascripts/locales.js\n" +
               "javascripts/commons.js\n\n" +
               "NETWORK:\n/"
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => manifest, :layout => false
  end
end
