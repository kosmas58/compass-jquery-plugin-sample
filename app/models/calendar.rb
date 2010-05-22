class Calendar < ActiveRecord::Base
  require 'ri_cal'
  
  has_many :events
  attr_accessor :ics 
  
  def to_ics(reload = false)
    if !@ics || reload
      @ics = RiCal.Calendar
      #@ics.sub!(/END:VCALENDAR/, '')

#      icalendar = RiCal.Calendar do |c| 
#        self.events.each do |event| 
#         event.ical_string
#          c.event do |e|             
#            e.summary = event.title.to_s 
#            e.description = event.description.to_s 
#            if event.all_day || event.start.to_date > event.end.to_date
#              e.dtstart = event.start.to_date
#              e.dtend = event.start.advance(:days => 1).to_date
#            elsif event.all_day
#              e.dtstart = event.start.to_date
#              e.dtend = event.end.to_date
#            else
#              e.dtstart = event.start
#              e.dtend = event.end
#            end
#            e.location = event.location.to_s
#            
#            if !event.frequency.to_s.empty? && CONFIG[:calendar]["frequency"].collect { |i| i[1] }.include?( event.frequency )
#              recurrence = []
#              recurrence << "FREQ=#{event.frequency}" if event.frequency
#              recurrence << "INTERVAL=#{event.interval}" if event.interval
#              recurrence << "UNTIL=#{ event.until.strftime('%Y%m%dT%H%M%SZ') }" if event.until
#              e.rrule = recurrence.join(";") if recurrence.length > 0
#            end
#          end
#        end 
#      end
#      @ics = icalendar
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
