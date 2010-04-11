class Invline < ActiveRecord::Base
  belongs_to :invheader
  
  gridify :demo0302,
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :only           => [:num, :item, :qty, :unit],
#    :colModel       => {
#                         :id    => { :name      => "id",
#                                     :label     => "ID",
#                                     :width     =>  35,
#                                     :resizable => false }, 
#                         :name  => { :name  => "name",
#                                     :label => "Name",
#                                     :width => 365,
#                                     :align => 'center' }
#                       }, 
    :width          => 400,
    :width_fit      => :fitted,
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true  
end
