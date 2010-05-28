class Event < ActiveRecord::Base 
  belongs_to :calendar
  
  validates_presence_of :summary
  #validates_presence_of :dtstart
  #validates_presence_of :dtend
  
  include Jqical::Event
  
  before_save :serialize_ical_event
  
  def to_ics(event)
    event.summary     = self.summary
    event.description = self.description
    if self.all_day 
      event.add_x_property("X-MICROSOFT-CDO-ALLDAYEVENT", "1")
    end
    event.dtstart     = self.dtstart
    event.dtend       = self.dtend
    event.location = self.location  
    
#    if !self.frequency.to_s.empty? && CONFIG[:calendar]["frequency"].collect { |i| i[1] }.include?( self.frequency )
#      recurrence = []
#      recurrence << "FREQ=#{self.frequency}" if self.frequency
#      recurrence << "INTERVAL=#{self.interval}" if self.interval
#      recurrence << "UNTIL=#{ self.until.strftime('%Y%m%dT%H%M%SZ') }" if self.until
#      event.rrule = recurrence.join(";") if recurrence.length > 0
#    end
  end
end
