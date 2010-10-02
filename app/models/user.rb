class User < ActiveRecord::Base  
  has_many :pets
  validates_presence_of :pseudo
  
  def self.userdata(records)
    userdata = {}
    if records
      
    end
    userdata
  end
  
  gridify :example05,
    :title          => "Players pets",
    :url            => "/jqgrid/animals",
    :height         => :auto,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true,
    :jqgrid_options => { :viewsortcols => [true, :horizontal,false] }
end
