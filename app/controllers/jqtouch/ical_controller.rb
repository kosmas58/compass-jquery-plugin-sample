class Jqtouch::IcalController < ApplicationController
  layout 'jqt_apple'
  
  protect_from_forgery
  
  def month
    @month = params[:month].to_i 
    @year  = params[:year].to_i   
    
    @monthName = I18n.t('date.month_names')[@month]
    
    @firstDay     = Date.new(@year, @month, 1)
    @firstDayWeek = @firstDay.wday    
    
    @lastDay     = (@firstDay>>1)-1 
    @lastDayWeek = @lastDay.wday
    
    
    #@lastMonday  = date('d-m-Y', strtotime('last Monday', strtotime($firstDay)));
  

    
    render :partial => "month", :layout => false
  end
  
  def events
    render :partial => "events", :layout => false
  end
  
end
