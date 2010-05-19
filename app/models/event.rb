class Event < ActiveRecord::Base 
  require 'ri_cal'
  require 'jqical/event'
  belongs_to :calendar
  
  #validates_presence_of :title
  #validates_presence_of :start
  #validates_presence_of :end  
  
  include JqIcal::Event
  
  def description
    @description ||= ical_event.description
  end
  attr_writer :description
  
  def location
    @location ||= ical_event.location
  end
  attr_writer :location
  
  def ends_at
    @ends_at ||= ical_event.dtend ? ical_event.dtend.to_datetime : starts_at + 60.minutes
  end
    
  private
    def serialize_ical_event
      ical_event.dtend       = ends_at
      ical_event.dtstart     = starts_at
      ical_event.summary     = summary
      ical_event.description = description
      ical_event.location    = location
      self.ical_string = ical_event.to_s
    end
  
  before_save :serialize_ical_event
end
