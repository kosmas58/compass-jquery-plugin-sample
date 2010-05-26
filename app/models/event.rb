class Event < ActiveRecord::Base 
  belongs_to :calendar
  
  #validates_presence_of :description
  #validates_presence_of :start
  #validates_presence_of :end  
  
  include Jqical::Event
  
  before_save :serialize_ical_event
end
