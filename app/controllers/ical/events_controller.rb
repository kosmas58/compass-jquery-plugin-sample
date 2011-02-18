class Ical::EventsController < ApplicationController
  layout 'ical'

  protect_from_forgery

  make_resourceful do
    actions :index, :index_reload, :new, :edit, :update, :delete, :destroy
    belongs_to :calendar

    response_for :index_reload do |format|
      format.html
      format.js do
        render(:partial => "index_reload", :layout => false)
      end
    end

    response_for :new do |format|
      format.html
      format.js do
        flash[:notice] = ""
        render(:partial => "form", :layout => false)
      end
    end

    response_for :edit do |format|
      format.html
      format.js do
        flash[:notice] = ""
        render(:partial => "form", :layout => false)
      end
    end

    response_for :update do |format|
      format.html
      format.js do
        if request.xhr?
          flash[:notice] = I18n.t('make_resourceful.update.success')
          render(:partial => "form", :layout => false)
        else
          redirect_to :action => :index
        end
      end
    end

    response_for :delete do |format|
      format.html
      format.js do
        flash[:notice] = "Do you really want to delete this event?"
        render(:partial => "form_delete", :layout => false)
      end
    end

    response_for :destroy do |format|
      format.html
      format.js do
        if request.xhr?
          flash[:notice] = I18n.t('make_resourceful.destroy.success')
          redirect_to :action => :index
          #render(:partial => "form_delete", :layout => false)
        else
          redirect_to :action => :index
        end
      end
    end
  end

  def create
    @event = ActiveRecord::Base::Event.new(params[:event])
    @event.calendar_id = params[:calendar_id]
    if @event.save
      flash[:notice] = I18n.t('make_resourceful.create.success')
      return render(:partial => "form")
      #redirect_to ical_calendar_events_url
    else
      return render(:partial => "form")
    end
  end

  def full_calendar
    respond_to do |format|
      format.html
      format.json do
        cal = ActiveRecord::Base::Calendar.find(params[:calendar_id])
        events = cal.full_events_by_date(((Time.at(params[:start].to_i)).to_date).to_datetime,
                                         ((Time.at(params[:end].to_i)).to_date).to_datetime)
        render :json => events
      end
    end
  end
end
