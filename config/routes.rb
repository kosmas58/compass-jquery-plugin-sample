Sample3::Application.routes.draw do

  resources :emulators do
    resources :blackberry_landscape do
      collection do
        get :jqm
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :blackberry_portrait do
      collection do
        get :jqm
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :ipad_landsacpe do
      collection do
        get :jqm
        get :jqm_original
      end
    end
    resources :ipad_portrait do
      collection do
        get :jqm
        get :jqm_original
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
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :palm_landscape do
      collection do
        get :jqm
        get :jqm_original
        get :jqt
        get :jqt_original
      end
    end
    resources :palm_portrait do
      collection do
        get :jqm
        get :jqm_original
        get :jqt
        get :jqt_original
      end
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

  namespace :jqtouch do
    resources :demo do
      post :ajax_post
    end
  end

  namespace :mobile do
    namespace :experiments do
      resources :list_items
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
