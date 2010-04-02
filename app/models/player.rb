class Player < ActiveRecord::Base  
  gridify :example01,
    :title          => "Football players",
    :url            => "/jqgrid/players",
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
    
  gridify :example03,
    :title          => "Football players",
    :url            => "/jqgrid/players",
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
    :select_rows    => "javascript: function handleSelection(id, status) { alert('Selected row ID ' + id);}",
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example04,
    :url   => "/jqgrid/players",
    :pager => true
    
  gridify :example05,
    :url   => "/jqgrid/players",
    :pager => true
end
