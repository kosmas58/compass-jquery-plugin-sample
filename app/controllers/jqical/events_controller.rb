class Jqical::EventsController < ApplicationController
  layout 'jqical'
  
  protect_from_forgery
  
  make_resourceful do
    actions :index, :index_reload, :new, :create, :edit, :update, :delete, :destroy
    belongs_to :calendar
    
    response_for :index_reload do | format |
      format.html
      format.js do
        render(:partial => "index_reload", :layout => false)
      end
    end
   
    response_for :new do | format |
      format.html
      format.js do
        render(:partial => "form", :layout => false)
      end
    end
    
    response_for :create do | format |
      format.html
      format.js do
        if request.xhr?
          render :nothing => true, :status => 200
        else
          redirect_to :action => :index
        end        
      end
    end
     
    response_for :edit do | format |
      format.html
      format.js do
        render(:partial => "form", :layout => false)
      end
    end
    
    response_for :update do | format |
      format.html
      format.js do
        if request.xhr?
          render :nothing => true, :status => 200
        else
          redirect_to :action => :index
        end        
      end
    end  
     
    response_for :delete do | format |
      format.html
      format.js do
        render(:partial => "form_delete", :layout => false)
      end
    end
    
    response_for :destroy do | format |
      format.html
      format.js do 
        if request.xhr?
          render :nothing => true, :status => 200
        else
          redirect_to :action => :index
        end
      end
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
