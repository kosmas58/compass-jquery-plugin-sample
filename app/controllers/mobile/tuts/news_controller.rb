require 'uri'
require 'net/http'

class Mobile::Tuts::NewsController < ApplicationController
  layout 'mobile'

  protect_from_forgery

  def bridge
    @val =  params[:fwd]

    # YQL query (SELECT * from feed ... ) // Split for readability
    path = "http://query.yahooapis.com/v1/public/yql?q="
    path += URI.escape("SELECT * FROM feed WHERE url='#{@val}'", Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    path += "&format=json"

    # Call YQL, and if the query didn't fail, cache the returned data
    render :json => Net::HTTP.get_response(URI.parse(path)).body
  end
end
