module TinyMceGzip
  class Routes
    def self.add_routes
      ActionController::Routing::Routes.add_route '/javascripts/tiny_mce/tiny_mce_gzip.js', :controller => "tiny_mce_gzip"
      ActionController::Routing::Routes.add_route '/javascripts/tiny_mce/tiny_mce_gzip_js.js', :controller => "tiny_mce_gzip", :action => 'js'
      ActionController::Routing::Routes.add_route '/javascripts/tiny_mce/tiny_mce_gzip_check.js', :controller => "tiny_mce_gzip", :action => 'check'
    end
  end
end