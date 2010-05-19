class Ical::EventsController < ApplicationController
  layout 'ical'
  
  protect_from_forgery
  
  make_resourceful do
    actions :index, :new, :edit
    
#    after :new do
#      wii = 0 
#    end
#    
#    response_for :new do 
#      return render(:partial => "form", :layout => false)
#    end  
    
  end
  
  def index_reload
    @events = Event.all
    render(:partial => "index_reload.js.haml", :format => :js)
  end

#  def new
#    @event = Event.new
#    return render(:partial => "form")
#  end

  def create
    @event = Event.new(params[:event])
    @event.save! 
    if request.xhr?
      #flash[:notice] = "Successfully created." 
      #return render(:partial => "form")
      render :nothing => true, :status => 200
    else
      redirect_to :action => :index
    end
  end

#  def edit
#    @event = Event.find(params[:id])
#    return render(:partial => "form")
#  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes!(params[:event])
    if request.xhr? 
      #flash[:notice] = "Successfully updated." 
      #return render(:partial => "form") 
      render :nothing => true, :status => 200  
    else
      redirect_to :action => :index
    end
  end

  def delete
    @event = Event.find(params[:id])
    return render(:partial => "form_delete")
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    if request.xhr?
      #flash[:notice] = "Successfully deleted." 
      #return render(:partial => "form_delete")
      render :nothing => true, :status => 200
    else
      redirect_to :action => :index
    end
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
