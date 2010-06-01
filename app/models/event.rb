class Event < ActiveRecord::Base 
  belongs_to :calendar
  
  validates_presence_of :summary
  #validates_presence_of :dtstart
  #validates_presence_of :dtend
  
  include Jqical::Event
  
  before_save :serialize_ical_event
  
  def to_ics(event)
    event.summary     = ical_event.summary
    event.description = ical_event.description
    if ical_event.x_properties["X-MICROSOFT-CDO-ALLDAYEVENT"][0]
      event.add_x_property("X-MICROSOFT-CDO-ALLDAYEVENT", "1")
    end
    event.dtstart  = ical_event.dtstart
    event.dtend    = ical_event.dtend
    event.location = ical_event.location
    
#    if !self.frequency.to_s.empty? && CONFIG[:calendar]["frequency"].collect { |i| i[1] }.include?( self.frequency )
#      recurrence = []
#      recurrence << "FREQ=#{self.frequency}" if self.frequency
#      recurrence << "INTERVAL=#{self.interval}" if self.interval
#      recurrence << "UNTIL=#{ self.until.strftime('%Y%m%dT%H%M%SZ') }" if self.until
#      event.rrule = recurrence.join(";") if recurrence.length > 0
#    end
  end
end
