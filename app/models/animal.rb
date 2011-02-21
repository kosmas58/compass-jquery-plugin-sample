class Animal < ActiveRecord::Base
  belongs_to :player

  def self.userdata(records)
    userdata = {}
    if records

    end
    userdata
  end

  gridify :example05,
          :url => "/widgets/jqgrid/animals",
          :data_type => :json,
          :only => [
              :id,
              :name],
          :colModel => [
              {:name => "id",
               :label => "ID",
               :width => 35,
               :resizable => false},
              {:name => "name",
               :label => "Name",
               :width => 365,
               :align => :center}
          ],
          :width => 400,
          :width_fit => :fitted,
          :height => :auto,
          :search_button => true,
          :refresh_button => true,
          :pager => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}
end
