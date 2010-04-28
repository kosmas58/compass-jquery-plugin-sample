class Jqtouch::IcalController < ApplicationController
  layout 'jqt_apple'
  
  protect_from_forgery
  
  def month
    @month = params[:month] 
    @year  = params[:year]   
    
    @firstDay     = Date.new(y=@year, m=@month, d="1").strftime("%d-%m%Y")
    #@firstDay     = date('d-m-Y', Date.new=(y=@year, m=@month, ));
    #@firstDayWeek = date('N', strtotime($firstDay)); 
    
    #@monthName   = date('F', strtotime($firstDay));
    #@lastMonday  = date('d-m-Y', strtotime('last Monday', strtotime($firstDay)));
  
    #@lastDayDay  = date('t', strtotime($firstDay)); 
    #@lastDay     = date('d-m-Y', strtotime($lastDayDay.'-'.$month.'-'.$year));
    #@lastDayWeek = date('N', strtotime($lastDay));    
    
    render :partial => "month", :layout => false
  end
  
  def events
    render :partial => "events", :layout => false
  end
  
end
