class Event < ActiveRecord::Base

  def self.to_calendar_json
    events = find(:all)
    json = %Q([)
    for event in events do
      json << %Q({"id":#{event.id},)
      couples = event.attributes.symbolize_keys
      event.attributes.each do |atr|
        json << %Q("#{atr[0].gsub(/_date/,'')}":"#{atr[1]}",) unless atr[0] == "id"
      end
      json.chop! << "},"
    end
    json.chop! << "]"

   # b = c.to_json
   # a = b.to_s

   # a.gsub!(/\{\"event\"\:$/, '')
   # a.gsub!(/\}\}$/, '}')
   # a.gsub!(/start_date$/, 'start')
   # a.gsub!(/end_date$/, 'end')
  end

  def to_calendar_json(attributes, current_page, per_page, total)
    json = %Q({"page":"#{current_page}","total":#{total/per_page.to_i+1},"records":"#{total}","rows":[)
    each do |elem|
      json << %Q({"id":"#{elem.id}","cell":[)
      couples = elem.attributes.symbolize_keys
      attributes.each do |atr|
        value = couples[atr]
        value = elem.try(atr) if elem.respond_to?(:try) && value.blank?
        json << %Q("#{value}",)
      end
      json.chop! << "]},"
    end
    json.chop! << "]}"
  end
  
  include Eventually::Event
  
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
