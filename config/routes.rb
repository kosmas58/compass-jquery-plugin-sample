ActionController::Routing::Routes.draw do |map|
  map.resources :emulators,
                :collection => {:edit   => :get,
                                :update => :put}
  
  map.namespace :jqtouch do |jqtouch|
    jqtouch.resources :demo => {:ajax_post => :post}
  end

  map.namespace :mobile do |mobile|
    mobile.namespace :experiments do |experiment|
      experiment.resources :list_items
    end
    mobile.resources :tools
  end

  map.resources :navigation,
                :collection => {:get_children=> :get,
                                :search => :get,
                                :analyze => :get,
                                :configure => :get,
                                :test => :get,
                                :seed => :get},
                :member => {:rename => :post,
                            :move => :put}

  map.namespace :widgets do |widget|
    widget.namespace :ical do |ical|
      ical.resources :calendars,
                     :collection => {:iphone => :get} do |calendar|
        calendar.resources :events,
                           :collection => {:index_reload => :get,
                                           :full_calendar => :get},
                           :member => {:delete => :get}
      end
    end

    widget.namespace :jqgrid do |jqgrid|
      jqgrid.resources :animals
      jqgrid.resources :demo,
                       :collection => {:books => :get,
                                       :clients => :get,
                                       :testxml => :get}
      jqgrid.resources :players
      jqgrid.resources :sprockets
      jqgrid.resources :users,
                       :collection => {:pets => :get,
                                       :post_data => :post}
      jqgrid.resources :secrets
      jqgrid.resources :animals
      jqgrid.resources :mine
    end

    widget.resources :jstree => {:get_children=> :get,
                                 :search => :get,
                                 :create_node => :post,
                                 :remove_node => :delete,
                                 :rename_node => :post,
                                 :move_node => :post,
                                 :analyze => :get,
                                 :rebuild => :post}

    widget.resources :tiny_mce,
                     :member => {:dump => :post}
  end

  Translate::Routes.translation_ui(map) if RAILS_ENV != "production "
  
  map.root :controller => "welcome"

  map.manifest '/manifest', :controller => :manifest, :action => :show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
