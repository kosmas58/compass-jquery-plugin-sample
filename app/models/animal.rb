class Animal < ActiveRecord::Base  
  belongs_to :player
  
  gridify :example05,
    :url            => "/jqgrid/animals",
    :data_type      => :json,
    :only           => [:id, :name],
    :colModel       => {
                         :id    => { :name      => "id",
                                     :label     => "ID",
                                     :width     =>  35,
                                     :resizable => false }, 
                         :name  => { :name  => "name",
                                     :label => "Name",
                                     :width => 365,
                                     :align => 'center' }
                       }, 
    :width          => 400,
    :width_fit      => :fitted,
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true  
  
  gridify :example10,
    :url            => "/jqgrid/animals",
    :data_type      => :json,
    :only           => [:id, :name],
    :colModel       => {
                         :id    => { :name      => "id",
                                     :label     => "ID",
                                     :width     =>  35,
                                     :resizable => false }, 
                         :name  => { :name  => "name",
                                     :label => "Name",
                                     :width => 365,
                                     :align => 'center' }
                       }, 
    :width          => 400,
    :width_fit      => :fitted,
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true  
end
