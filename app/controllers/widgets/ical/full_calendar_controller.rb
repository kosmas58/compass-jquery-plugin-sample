class Widgets::Ical::FullCalendarController < ApplicationController
  layout 'full_calendar'

  protect_from_forgery

  def jsondemo
    year = Time.now.year
    month = Time.now.month

    data = [
      {"id"    => 111,
       "title" => "Event1",
       "start" => "#{year}-#{month}-10",
       "url"   => "http://yahoo.com/"},
      {"id"    => 222,
       "title" => "Event2",
       "start" => "#{year}-#{month}-20",
       "end"   => "#{year}-#{month}-22",
       "url"   => "http://yahoo.com/"}
    ]

    render :json => data.to_json, :layout => false
  end
end
