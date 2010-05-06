class Jqtouch::IcalController < ApplicationController
  layout 'jqt_apple'
  
  protect_from_forgery
  
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
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'prevmonth', :value => day  } 
        day += 1
      end      
    end
    
    # Fill array with month days    
    day = firstDay
    (1..lastDayDay).each do     
      @cal <<= { :day => day.strftime('%d').to_i, :type => 'normal', :value => day  } 
      day += 1
    end 

    # Fill array with next month days
    if lastDayWDay != 7 then # last day of month not sunday
      day = lastDay + 1
      (7-lastDayWDay).times do
        @cal <<= { :day => day.strftime('%d').to_i, :type => 'nextmonth', :value => day } 
        day += 1
      end      
    end
    
#    function writeTD($day, $type, $events)
#  {
#    $passedDate = date('d-m-Y', strtotime($day));
#    $dayToWrite = date('j', strtotime($day));
#    $eventDay = false;
#    $class = '';
#    
#    // event day?
#    if(in_array($passedDate, $events) == true)
#      $eventDay = true;
#    
#    if($type == 'normal' && $eventDay == true)
#      $class = ' class="date_has_event"';
#    elseif($type != 'normal' && $eventDay == false)
#      $class = ' class="'.$type.'"';
#    elseif($type != 'normal' && $eventDay == true)
#      $class = ' class="'.$type.' date_has_event"';
#      
#    return '<td'.$class.'>'.$dayToWrite.'<input type="hidden" value="'.$passedDate.'" /></td>';
#  }
    
    
    render :partial => "month", :layout => false
  end
  
  def events
    render :partial => "events", :layout => false
  end
  
end
