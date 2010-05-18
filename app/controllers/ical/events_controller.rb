class Ical::EventsController < ApplicationController
  layout 'ical'
  
  protect_from_forgery
  
  make_resourceful do
    actions :all
  end
end
