ActionController::Routing::Routes.draw do |map|  
  map.resources :iphone, :collection => { :main     => :get,
                                          :original => :get }

  map.resources :jstree => { :server_get  => :get,
                             :server_post => :post }  

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
  
  map.namespace :jqical do |jqical|
    jqical.resources :calendars,
                     :collection => { :iphone => :get } do |calendar|
      calendar.resources :events,
                         :collection => { :index_reload =>  :get,
                                          :full_calendar => :get },
                         :member =>     { :delete       => :get  } 
    end
  end                                     
  
  Translate::Routes.translation_ui(map) if RAILS_ENV != "production "

  map.root :controller => "welcome"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
