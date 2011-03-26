CompassJqueryPluginSample::Application.routes.draw do

  namespace :emulators do
    resources :blackberry_landscape do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :blackberry_portrait do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :ipad_landscape do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :ipad_portrait do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :iphone_landscape do
      collection do
        get :jqm
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :iphone_portrait do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :palm_landscape do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :palm_portrait do
      collection do
        get :jqm
        get :jqm2
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
  end

  namespace :graphics do
    resources :gantt_view do
      collection do
        get :default
      end
    end
    resources :sparklines do
      collection do
        get :default
        get :examples
      end
    end
  end

  resources :haml do
    collection do
      get :jhaml
    end
  end

  namespace :handling do
    resources :history do
      collection do
        get :ajax
        get :ajax2
        get :bbq
        get :html4
        get :html5
        get :mvc
      end
    end
    resources :replace_text do
      collection do
        get :default
      end
    end    
  end

  namespace :jqtouch do
    resources :clocks
    namespace :custom do
      resources :animation1
      resources :animation2
    end
    resources :demo do
      collection do
        get :ajax
        get :ajax_get
        get :ajax_long
        post :ajax_post
      end
    end
    resources :demo2
    namespace :ext do
      resources :autotitles
      resources :floaty
      resources :gestures
      resources :location
      resources :offline
    end
    resources :ical do
      collection do
        get :index2
        get :month
      end
    end
    namespace :jonathan_stark do
      resources :kilo
      resources :kilo_offline
      resources :offline
    end
    resources :mail
    resources :mobione do
      get :demo1
      get :demo2
      get :demo3
      get :demo4
      get :demo5
      get :events
      get :virtual
    end
    resources :todo
  end

  namespace :mobile do
    resource :experiments do
      resources :list_items
    end
  end

  resources :navigation do
    collection do
      get :get_children
      get :search
      get :analyze
      get :configure
      get :test
      get :seed
    end
    member do
      post :rename
      put  :move
    end
  end

  namespace :ui do
    namespace :interactions do
      resources :draggable
      
    end
  end

  namespace :widgets do
    resources :jstree do
      get    :get_children
      get    :search
      post   :create_node
      delete :remove_node
      post   :rename_node
      post   :move_node
      get    :analyze
      post   :rebuild
    end
    namespace :ical do
      resources :calendars do
        collection do
          get :iphone
        end
        resources :events do
          collection do
            get :index_reload
            get :full_calendar
          end
          member  do
            get :delete
          end
        end
      end
    end
    namespace :jqgrid do
      resources :animals
      resources :demo do
        collection do
          get :books
          get :clients
          get :testxml
        end
      end
      resources :players
      resources :sprockets
      resources :users do
        collection do
          get  :pets
          post :post_data
        end
      end
      resources :secrets
      resources :animals
      resources :mine
    end
    resources :tiny_mce do
      member do
        post :dump
      end
    end
  end

  #Translate::Routes.translation_ui(map) if ::Rails.env != "production "

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "welcome#index"

  match '/manifest' => 'manifest#show'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
