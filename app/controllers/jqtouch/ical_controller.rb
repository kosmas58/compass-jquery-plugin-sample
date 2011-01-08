class Jqtouch::IcalController < ApplicationController
  layout 'jqt_apple'
  
  protect_from_forgery
  
  def index
    @calendars = ActiveRecord::Base::Calendar.find(:all)
  end
  
  def month
    @month = params[:month].to_i 
    @year  = params[:year].to_i   
    
    @monthName = I18n.t('date.month_names')[@month]
    
    firstDay     = Date.new(@year, @month, 1)
    firstDayWDay = firstDay.wday == 0 ? 7 : firstDay.wday
    
    lastDay     = (firstDay>>1)-1 
    lastDayDay  = lastDay.strftime('%d').to_i
    lastDayWDay = lastDay.wday == 0 ? 7 : lastDay.wday
    
    @cal = []

    # Fill array with previous month days
    if firstDayWDay != 1 then # first day of month not monday
      preDays = firstDayWDay - 1
      day = firstDay - preDays 
      preDays.times do
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'prevmonth', :value => day, :class => 'prevmonth' }
        day += 1
      end
    end
    
    # Fill array with month days    
    day = firstDay
    (1..lastDayDay).each do     
      @cal <<= { :day => day.strftime('%d').to_i, :type => 'normal', :value => day, :class => 'normal'  }
      day += 1
    end 

    # Fill array with next month days
    if lastDayWDay != 7 then # last day of month not sunday
      day = lastDay + 1
      (7-lastDayWDay).times do
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'nextmonth', :value => day, :class => 'nextmonth' }
        day += 1
      end
    end
    
    ActiveRecord::Base::Calendar.find(1).full_events_by_date(@cal[0][:value].to_datetime, @cal[-1][:value].to_datetime).each do |event|
      myday = @cal.find do |day|
        day[:value] == event[:start].to_date
      end
      if myday[:type] == :normal
        myday[:class] = "date_has_event"
      else
        myday[:class] = "#{myday[:type]} date_has_event"
      end
    end
    
    render :partial => "month", :layout => false
  end
  
  def events
    render :partial => "events", :layout => false
  end
  
end
