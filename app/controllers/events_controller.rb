class EventsController < ApplicationController
  layout 'blueprint'
  
#  make_resourceful do
#    actions :all
#  end

  def months
    
  end

  def weeks
    @example = (params[:example] || "01")
    @events = Event.to_calendar_json()
    
    @event = '[{"id":1, "start":"2009-09-10T09:15:00.000+10:00", "end":"2009-09-10T11:15:00.000+10:00", "title":"Breakfast with Willy"},
                {"id":2, "start":"2009-09-10T13:15:00.000+10:00", "end":"2009-09-10T14:15:00.000+10:00", "title":"Lunch with Mike"}]'
  end
end
