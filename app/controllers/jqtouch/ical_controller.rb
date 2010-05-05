class Jqtouch::IcalController < ApplicationController
  layout 'jqt_apple'
  
  protect_from_forgery
  
  def month
    @month = params[:month].to_i 
    @year  = params[:year].to_i   
    
    @monthName = I18n.t('date.month_names')[@month]
    
    firstDay     = Date.new(@year, @month, 1)
    firstDayWDay = firstDay.wday    
    
    lastDay     = (firstDay>>1)-1 
    lastDayDay  = lastDay.strftime('%d').to_i
    lastDayWDay = lastDay.wday
    
    @cal = []

    # Fill array with previous month days
    if firstDayWDay != 1 then # first day of month not monday
      preDays = firstDayWDay - 1
      day = firstDay - preDays 
      preDays.times do
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'prevmonth' } 
        day += 1
      end      
    end
    
    # Fill array with month days    
    (1..lastDayDay).each do |i| 
      @cal <<= { :day => i, :type => 'normal' } 
    end 

    # Fill array with next month days
    if lastDayWDay != 0 then # last day of month not sunday
      day = lastDay + 1
      (7-lastDayWDay).times do
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'nextmonth' } 
        day += 1
      end      
    end
    
    render :partial => "month", :layout => false
  end
  
  def events
    render :partial => "events", :layout => false
  end
  
end
