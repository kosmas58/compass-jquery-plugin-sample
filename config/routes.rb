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
    namespace :docs do
      resources :main
      resources :about do
        collection do
          get :accessibility
          get :features
          get :intro
          get :platforms
        end
      end
      resources :api do
        collection do
          get :events
          get :globalconfig
          get :mediahelpers
          get :methods
          get :themes
        end
      end
      resources :buttons do
        collection do
          get :api_buttons
          get :buttons_grouped
          get :buttons_icons
          get :buttons_inline
          get :buttons_themes
          get :buttons_types
        end
      end
      resources :content do
        collection do
          get :api_content
          get :content_collapsible
          get :content_grids
          get :content_html
          get :content_themes
        end
      end
      resources :forms do
        collection do
          get :api_forms
          get :doc_forms
          get :forms_all
          get :forms_all_native
          get :forms_checkboxes
          get :forms_radiobuttons
          get :forms_sample
          get :forms_sample_repsonse
          get :fomrs_search
          get :forms_selects
          get :forms_slider
          get :forms_switch
          get :forms_text
          get :plugin_eventsmethods
        end
      end
      resources :lists do
        collection do
          get :api_lists
          get :docs_lists
          get :lists_count
          get :lists_divider
          get :lists_formatting
          get :lists_icons
          get :lists_inset
          get :lists_nested
          get :lists_ol
          get :lists_performance
          get :lists_readonly
          get :lists_search
          get :lists_search_inset
          get :lists_search_with_dividers
          get :lists_split
          get :lists_split_purchase
          get :lists_themes
          get :lists_thumbnails
          get :lists_ul
        end
      end
      resources :pages do
        collection do
          get :api_pages
          get :dialog
          get :dialog_alt
          get :dialog_buttons
          get :dialog_success
          get :docs_dialogs
          get :docs_link_scenarios
          get :docs_links
          get :docs_links_urltest
          get :docs_navmodel
          get :docs_pages
          get :docs_transitions
          get :link_formats
          get :multipage_template
          get :page_template
          get :pages_themes
          get :transition_success
        end
      end
      resources :toolbars do
        collection do
          get :api_bars
          get :bars_fixed
          get :bars_fullscreen
          get :bars_themes
          get :docs_bars
          get :docs_footers
          get :docs_headers
          get :docs_navbar
          get :footer_persist_a
          get :footer_persist_b
          get :footer_persist_c
        end
      end
    end
    namespace :experiments do
      resources :main
      resources :api_viewer
      resources :converter
      resources :datepicker
      resources :dst_test
      resources :google_maps do
        collection do
          get :map
        end
      end
      resources :list_items
      resources :navbar_glyphish
      resources :photos do
        collection do
          get :photo2
          get :photo3
          get :photo4
          get :photo5
          get :photo6
        end
      end
      resources :scrollview do
        collection do
          get :direction
          get :list_divider
          get :sv_test_01
          get :sv_test_02
        end
      end
      resources :weather
    end
    namespace :tuts do
      resources :new_claim
      resources :news
      resources :tuts do
        collection do
          get :article
          get :site
        end
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

  namespace :ui do
    namespace :effects do
      resources :add_class
      resources :animate
      resources :effect do
        collection do
          get :default
          get :easing
        end
      end
      resources :hide
      resources :remove_class
      resources :show
      resources :switch_class
      resources :toggle
      resources :toggle_class
    end
    namespace :interactions do
      resources :draggable do
        collection do
          get :default
          get :constrain_movement
          get :cursor_style
          get :delay_start
          get :events
          get :handle
          get :revert
          get :scroll
          get :snap_to
          get :sortable
          get :visual_feedback
        end
      end
      resources :droppable do
        collection do
          get :default
          get :accepted_elements
          get :photo_manager
          get :propagation
          get :revert
          get :shopping_cart
          get :visual_feedback
        end
      end
      resources :resizable do
        collection do
          get :default
          get :animate
          get :aspect_ratio
          get :constrain_area
          get :cursor_style
          get :delay_start
          get :helper
          get :max_min
          get :snap_to_grid
          get :synchronous_resize
          get :textarea
          get :visual_feedback
        end
      end
      resources :selectable do
        collection do
          get :default
          get :display_grid
          get :serialize
        end
      end
      resources :sortable do
        collection do
          get :default
          get :connect_lists
          get :connect_lists_through_tabs
          get :delay_start
          get :display_grid
          get :empty_lists
          get :items
          get :placeholder
          get :portlets
        end
      end
    end
    namespace :utilities do
      resources :position do
        collection do
          get :default
          get :cycler
        end
      end
    end
    namespace :widgets do
      resources :accordion do
        collection do
          get :default
          get :collapsible
          get :custom_icons
          get :fillspace
          get :hoverintent
          get :mouseover
          get :no_auto_height
          get :sortable
        end
      end
      resources :autocomplete do
        collection do
          get :default
          get :categories
          get :combobox
          get :custom_data
          get :folding
          get :maxheight
          get :multiple
          get :multiple_remote
          get :remote
          get :remote_jsonp
          get :remote_with_cache
          get :remote_xml
        end
      end
      resources :button do
        collection do
          get :default
          get :checkbox
          get :icon
          get :radio
          get :splitbutton
          get :toolbar
        end
      end
      resources :datepicker do
        collection do
          get :default
          get :alt_field
          get :animation
          get :buttonbar
          get :date_formats
          get :date_range
          get :dropdown_month_year
          get :icon_trigger
          get :inline
          get :localization
          get :min_max
          get :multiple_calendars
          get :other_months
          get :show_week
        end
      end
      resources :dialog do
        collection do
          get :default
          get :animated
          get :greybox
          get :modal
          get :modal_confirmation
          get :modal_form
          get :modal_message
        end
      end
      resources :panel do
        collection do
          get :default
          get :accordion
          get :cookie
          get :demo
          get :left
          get :right1
          get :right2
          get :simple
        end
      end
      resources :progressbar do
        collection do
          get :default
          get :animated
          get :resize
        end
      end
      resources :selectmenu do
        collection do
          get :default
          get :ajax
          get :background
          get :custom_icons
          get :custom_icons2
          get :dependency
          get :disable_enable
          get :dropdown
          get :get_data
          get :icons
          get :maxheight
          get :menuwidth
          get :methods
          get :optgroups
          get :positioning
          get :text_formatting
          get :without_id
        end
      end
      resources :slider do
        collection do
          get :default
          get :colorpicker
          get :hotelrooms
          get :multiple_vertical
          get :range
          get :range_vertical
          get :rangemax
          get :rangemin
          get :side_scroll
          get :slider_vertical
          get :steps
          get :tabs
        end
      end
      resources :tabs do
        collection do
          get :default
          get :ajax
          get :bottom
          get :collapsible
          get :cookie
          get :manipulation
          get :mouseover
          get :sortable
          get :vertical
        end
      end
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
