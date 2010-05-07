class EventsController < ApplicationController
  layout 'events'
  
  protect_from_forgery

#  make_resourceful do
#    actions :all
#  end

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    return render(:partial => "form")
  end

  def create
    @event = Event.new(params[:event])
    @event.save!
    redirect_to :action => :index
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes!(params[:event])
    redirect_to :action => :index
  end

  def months

  end

  def weeks
    @example = (params[:example] || "01")
    @events = Event.to_calendar_json()

    @event = '[{"id":1, "start":"2009-09-10T09:15:00.000+10:00", "end":"2009-09-10T11:15:00.000+10:00", "title":"Breakfast with Willy"},
                {"id":2, "start":"2009-09-10T13:15:00.000+10:00", "end":"2009-09-10T14:15:00.000+10:00", "title":"Lunch with Mike"}]'
  end
end
