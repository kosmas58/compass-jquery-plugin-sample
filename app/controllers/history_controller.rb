class HistoryController < ApplicationController
  layout 'history' 
  protect_from_forgery
  
  def load_1
    render :partial => "load_1", :layout => false
  end
  
  def load_1a
    render :partial => "load_1a", :layout => false
  end
  
  def load_1b
    render :partial => "load_1b", :layout => false
  end
  
  def load_1c
    render :partial => "load_1c", :layout => false
  end
  
  def load_2
    render :partial => "load_2", :layout => false
  end
  
  def load_2a
    render :partial => "load_2a", :layout => false
  end
  
  def load_2aA
    render :partial => "load_2aA", :layout => false
  end
  
  def load_2aB
    render :partial => "load_2aB", :layout => false
  end
  
  def load_2b
    render :partial => "load_2b", :layout => false
  end
  
  def load_3
    render :partial => "load_3", :layout => false
  end
end
