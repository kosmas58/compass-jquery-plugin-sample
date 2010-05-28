class Calendar < ActiveRecord::Base
  require 'ri_cal'
  
  has_many :events
  attr_accessor :ics 
  
  def to_ics(reload = false)
    if !@ics || reload
      ical = RiCal.Calendar do |c| 
        c.add_x_property("X-WR-CALNAME" , self.name)
        self.events.each do |event|
          c.event do |e|
            #e = event.to_ics
          end
        end
      end
      @ics = ical
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
