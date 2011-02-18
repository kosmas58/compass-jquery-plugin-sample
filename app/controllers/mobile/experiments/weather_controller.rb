require 'open-uri'
require 'hpricot'

class Mobile::Experiments::WeatherController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def index
    @location = params[:location] || "Munich"
    doc = Hpricot::XML(open("http://www.google.com/ig/api?weather=#{@location}&hl=en"))

    weather_current = Array['city', 'condition', 'temp_c', 'icon', 'humidity', 'wind_condition']
    ptrs = Hash.new
    weather_current.each do |ptr|
      item = doc.at(ptr).attributes['data']
      translated = Iconv.iconv('UTF-8', 'ISO-8859-1', item)
      ptrs[ptr.intern] = translated.to_s
    end
    @information = ptrs

    weather_forecast = Array['day_of_week', 'low', 'high', 'icon', 'condition']
    @forecast_list = []
    (doc./ "forecast_conditions").each do |condition|
      ptrs = Hash.new
      weather_forecast.each do |ptr|
        item = (condition/ptr)[0].attributes['data']
        translated = Iconv.iconv('UTF-8', 'ISO-8859-1', item)
        ptrs[ptr.intern] = translated.to_s
      end
      @forecast_list << ptrs
    end
  end
end
