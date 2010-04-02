class Player < ActiveRecord::Base  
  gridify :example01,
    :title          => "Football players",
    :url            => "/jqgrid/players",
    #:only           => [:id, :pseudo, :firstname, :lastname, :email, :role],
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :example02,
    :title             => "Football players",
    :url               => "/jqgrid/players",
    :only              => [:id, :pseudo, :firstname, :lastname, :email, :role],
    :height            => :auto,
    :width_fit         => :fluid,
    :select_rows       => true, 
    #:selection_handler => "handleSelection",
    :search_button     => false,  
    :pager             => true
    
  gridify :example03,
    :url   => "/jqgrid/players",
    :pager => true
    
  gridify :example04,
    :url   => "/jqgrid/players",
    :pager => true
    
  gridify :example05,
    :url   => "/jqgrid/players",
    :pager => true
end
