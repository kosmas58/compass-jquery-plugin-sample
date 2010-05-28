class Event < ActiveRecord::Base 
  belongs_to :calendar
  
  validates_presence_of :summary
  #validates_presence_of :dtstart
  #validates_presence_of :dtend
  
  include Jqical::Event
  
  before_save :serialize_ical_event
  
  def to_ics(reload = false)
    if !@ics || reload
      ical = RiCal.Calendar do |c| 
        c.add_x_property("X-WR-CALNAME" , self.name)
        self.events.each do |event|
          c.event = RiCal.Event.parse_string(event.ical_string)
        end
      end
      @ics = ical
    end
    @ics
  end
     

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
    
  
#    
#      def handle_all_day
#         ical_event.x_properties["X-MICROSOFT-CDO-ALLDAYEVENT"] = []
#         if all_day
#          self.all_day = true
#          self.dtstart = DateTime.parse("#{start_date}T00:00")
#          self.dtend = DateTime.parse("#{end_date}T00:00")+1.day 
#          ical_event.add_x_property("X-MICROSOFT-CDO-ALLDAYEVENT", "1")
#        else
#          self.all_day = false
#          self.dtstart = DateTime.parse("#{start_date}T#{start_time}")
#          self.dtend = DateTime.parse("#{end_date}T#{end_time}")
#        end
#      end    
  
end
