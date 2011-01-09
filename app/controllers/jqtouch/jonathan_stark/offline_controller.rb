class Jqtouch::JonathanStark::OfflineController < ApplicationController
  layout 'jqt_offline'
  
  protect_from_forgery
  
  def manifest
    manifest =  "CACHE MANIFEST\n\n" +
                "images/demo/jqtouch/jonathan_stark/logo.jpg\n" +
                "images/demo/jqtouch/jonathan_stark/myCustomIcon.png\n" +
                "images/demo/jqtouch/jonathan_stark/myCustomStartupGraphic.png\n" +
                "images/jquery/touch/jqt/activeButton.png\n" +
                "images/jquery/touch/jqt/back_button.png\n" +
                "images/jquery/touch/jqt/back_button_clicked.png\n" +
                "images/jquery/touch/jqt/blueButton.png\n" +
                "images/jquery/touch/jqt/button.png\n" +
                "images/jquery/touch/jqt/button_clicked.png\n" +
                "images/jquery/touch/jqt/chevron.png\n" +
                "images/jquery/touch/jqt/chevron_circle.png\n" +
                "images/jquery/touch/jqt/grayButton.png\n" +
                "images/jquery/touch/jqt/greenButton.png\n" +
                "images/jquery/touch/jqt/loading.gif\n" +
                "images/jquery/touch/jqt/on_off.png\n" +
                "images/jquery/touch/jqt/redButton.png\n" +
                "images/jquery/touch/jqt/rowhead.png\n" +
                "images/jquery/touch/jqt/toggle.png\n" +
                "images/jquery/touch/jqt/toggleOn.png\n" +
                "images/jquery/touch/jqt/toolbar.png\n" +
                "images/jquery/touch/jqt/whiteButton.png\n" +
                "images/jquery/touch/jqtouch.png\n" +
                "images/jquery/touch/jqtouch4.png\n" +
                "images/jquery/touch/jqt_startup.png\n" +
                "stylesheets/compiled/jquery/touch/jqtouch.css\n" +
                "stylesheets/compiled/jquery/touch/jqt.css\n" +
                "javascripts/jquery.min.js\n" +
                "javascripts/jquery.jqtouch.min.js\n" +
                "javascripts/locales.js\n" +
                "javascripts/commons.js\n\n" +
                "FALLBACK:\n" +
                "/images/demo/touch/jonathan_stark/offline.jpg\n\n" +
                "NETWORK:\n/"
               
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => manifest, :layout => false
  end
end
