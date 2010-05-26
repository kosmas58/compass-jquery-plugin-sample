class Event < ActiveRecord::Base 
  belongs_to :calendar
  
#  validates_presence_of :summary
#  validates_presence_of :location
#  validates_presence_of :description
#  
  include Jqical::Event
  
  before_save :serialize_ical_event
end
