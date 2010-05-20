class Calendar < ActiveRecord::Base
  require 'ri_cal'
  
  has_many :calendar_events
  attr_accessor :ics 
  
  def to_ics(reload = false)
    if !@ics || reload
      icalendar = RiCal.Calendar do |c| 
#        self.calendar_events.each { |calendar_event| 
#          c.event do |e|
#            e.summary = calendar_event.title.to_s 
#            e.description = calendar_event.description.to_s 
#            if calendar_event.all_day || calendar_event.start.to_date > calendar_event.end.to_date
#              e.dtstart = calendar_event.start.to_date
#              e.dtend = calendar_event.start.advance(:days => 1).to_date
#            elsif calendar_event.all_day
#              e.dtstart = calendar_event.start.to_date
#              e.dtend = calendar_event.end.to_date
#            else
#              e.dtstart = calendar_event.start
#              e.dtend = calendar_event.end
#            end
#            e.location = calendar_event.location.to_s
#            
#            if !calendar_event.frequency.to_s.empty? && CONFIG[:calendar]["frequency"].collect { |i| i[1] }.include?( calendar_event.frequency )
#              recurrence = []
#              recurrence << "FREQ=#{calendar_event.frequency}" if calendar_event.frequency
#              recurrence << "INTERVAL=#{calendar_event.interval}" if calendar_event.interval
#              recurrence << "UNTIL=#{ calendar_event.until.strftime('%Y%m%dT%H%M%SZ') }" if calendar_event.until
#              e.rrule = recurrence.join(";") if recurrence.length > 0
#            end
#          end
#        } 
      end
      @ics = icalendar
    end
    @ics
  end
    
  def bounded_events(start_date, end_date)
    events = self.to_ics.events.collect { |i|
      i.occurrences(:starting => start_date, :before => end_date).collect { |j| 
        { :summary     => j.summary, 
          :description => j.description, 
          :location    => j.location, 
          :start       => j.dtstart, 
          :end         => j.dtend } 
      } 
    } 
    events.reject { |i| i.empty? }.flatten
  end
  
  def bounded_events_by_date(start_date,end_date)
    events = self.bounded_events(start_date, end_date) 
    rtn_hash = {} 
    events.each { |e|
      rtn_hash[e[:start].strftime("%Y-%m-%d")] ||= []
      rtn_hash[e[:start].strftime("%Y-%m-%d")] << e
    } 
   
    rtn_hash.each_pair { |k,v|
      v.sort! { |a,b| a[:summary]<=>b[:summary] }.sort! { |a,b| a[:start]<=>b[:start] }
    }
    rtn_hash 
  end
end
