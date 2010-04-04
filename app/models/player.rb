class Player < ActiveRecord::Base  
  has_many :animals
  validates_presence_of :pseudo
    
  gridify :example01,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example02,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :arranger       => :sortable,
    :pager          => true
    
  gridify :example03,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role], 
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :height         => :auto,
    :width_fit      => :fluid,
    :select_rows    => true, 
    :search_button  => false,  
    :pager          => true
    
  gridify :example04,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :height         => :auto,
    :select_rows    => "javascript: handleSelection",
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example05,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :height         => :auto,
    :select_rows    => true,
    :multi_select   => true,
    :row_numbers    => true,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example06,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },
    :width          => 600,
    :width_fit      => :fitted,
    :height         => :auto,
    :select_rows    => "javascript: handleSelection",
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example07,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :restful        => true,
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },                       
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true,
    :editable       => true,
    :inline_edit    => true,
    :add_button     => true, 
    :delete_button  => true
    
  gridify :example08,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :restful        => true,
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },                       
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true,    
    :editable       => true,
    :edit_button    => true,
    :add_button     => true, 
    :delete_button  => true
    
  gridify :example09,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :restful        => true,
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },                       
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true,    
    :editable       => true,
    :edit_button    => true,
    :add_button     => true, 
    :delete_button  => true
    
  gridify :example10,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    :restful        => true,
    :data_type      => :json,
    :only           => [:id, :pseudo, :firstname, :lastname, :email, :role],  
    :colModel       => {
                         :id        => { :name => "id",        :label => "ID", :width => 35, :resizable => false }, 
                         :pseudo    => { :name => "pseudo",    :label => "Pseudo" }, 
                         :firstname => { :name => "firstname", :label => "Firstname" },
                         :lastname  => { :name => "lastname",  :label => "Lastname" },
                         :email     => { :name => "email",     :label => "Email" },
                         :role      => { :name => "role",      :label => "Role" }
                       },                       
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true,    
    :editable       => true,
    :edit_button    => true,
    :add_button     => true, 
    :delete_button  => true
end
