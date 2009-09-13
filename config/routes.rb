ActionController::Routing::Routes.draw do |map|

  map.resources :users, :collection => { :pets => :get, :post_data => :post }
  
  map.resources :people, :collection => {:grid_data => :get}

  map.resources :widgets
  
  map.resources :events, :collection => { :weeks  => :get, 
                                          :months => :get }

  Translate::Routes.translation_ui(map) if RAILS_ENV != "production "

  map.root :controller => "users"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
