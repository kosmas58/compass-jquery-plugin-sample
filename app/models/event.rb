class Event < ActiveRecord::Base 
  require 'ri_cal'
  belongs_to :calendar
  
  #validates_presence_of :title
  #validates_presence_of :start
  #validates_presence_of :end  
  
  include Ical::Event
end
