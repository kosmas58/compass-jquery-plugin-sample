ActionController::Routing::Routes.draw do |map|

#  map.namespace :jqueryui do |jqueryui|
#    jqueryui.namespace :effects do |effects|
#      effects.resources :add_class
#    end
#    jqueryui.namespace :interactions do |interactions|
#      interactions.resources :draggable
#    end
#    jqueryui.namespace :widgets do |widgets|
#      widgets.resources :accordion
#    end
#  end

  #map.resources :dynatree, :collection => { :data1 => :get, 
  #                                          :data2 => :get }
  
  map.resources :iphone, :collection => { :main     => :get,
                                          :original => :get }

  map.namespace :jqgrid do |jqgrid|
    jqgrid.resources :animals
    jqgrid.resources :demo, :collection => { :books => :get } 
    jqgrid.resources :players
    jqgrid.resources :sprockets
    jqgrid.resources :users, :collection => { :pets      => :get,
                                              :post_data => :post }  
    jqgrid.resources :widgets 
  end
  
  map.namespace :jqtouch do |jqtouch|
    jqtouch.resources :demo => { :ajax_post => :post }  
  end
 
  map.resources :events, :collection => { :index_reload => :get,
                                          :weeks        => :get, 
                                          :months       => :get }
  
  Translate::Routes.translation_ui(map) if RAILS_ENV != "production "

  map.root :controller => "welcome"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
