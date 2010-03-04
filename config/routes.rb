ActionController::Routing::Routes.draw do |map|
  map.resources :accounts


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

  map.namespace :jqgrid do |jqgrid|
    jqgrid.resources :players
    jqgrid.resources :users, :collection => { :pets => :get, :post_data => :post }    
  end
  
  Translate::Routes.translation_ui(map) if RAILS_ENV != "production "

  map.root :controller => "welcome"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
