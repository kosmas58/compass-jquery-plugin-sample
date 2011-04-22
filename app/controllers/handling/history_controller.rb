class Handling::HistoryController < ApplicationController
  protect_from_forgery

  def ajax_1
    render :partial => "ajax_1", :layout => false
  end

  def ajax_2
    render :partial => "ajax_2", :layout => false
  end

  def ajax_3
    render :partial => "ajax_3", :layout => false
  end

  def ajax2_1
    render :partial => "ajax2_1", :layout => false
  end

  def ajax2_2
    render :partial => "ajax2_2", :layout => false
  end

  def ajax2_3
    render :partial => "ajax2_3", :layout => false
  end

  def mvc_1
    render :partial => "mvc_1", :layout => false
  end

  def mvc_1a
    render :partial => "mvc_1a", :layout => false
  end

  def mvc_1b
    render :partial => "mvc_1b", :layout => false
  end

  def mvc_1c
    render :partial => "mvc_1c", :layout => false
  end

  def mvc_2
    render :partial => "mvc_2", :layout => false
  end

  def mvc_2a
    render :partial => "mvc_2a", :layout => false
  end

  def mvc_2aA
    render :partial => "mvc_2aA", :layout => false
  end

  def mvc_2aB
    render :partial => "mvc_2aB", :layout => false
  end

  def mvc_2b
    render :partial => "mvc_2b", :layout => false
  end

  def mvc_3
    render :partial => "mvc_3", :layout => false
  end
end
