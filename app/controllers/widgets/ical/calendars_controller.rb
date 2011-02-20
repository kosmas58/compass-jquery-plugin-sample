class Widgets::Ical::CalendarsController < ApplicationController
  layout 'ical', :except => [:iphone]

  protect_from_forgery

  make_resourceful do
    actions :all

    before :new, :edit do
      @color = "#" + ("%x" % @current_object.color).rjust(6, '0')
    end

    before :create, :update do
      @current_object.color = params[:color].sub(/#/, '').hex
    end

    response_for :show do |format|
      format.html
      format.ics do
        render(:text => @current_object.to_ics())
      end
    end

    response_for :create, :update, :destroy do |format|
      format.html { redirect_to ical_calendars_path }
    end
  end

  def iphone
    render :iphone, :layout => 'iphone_portrait'
  end
end
