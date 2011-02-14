require 'uri'
require 'net/http'

class Mobile::Tuts::TutsController < ApplicationController
  layout 'tuts'
  protect_from_forgery

  def site
    @siteName = params[:siteName] || "nettuts"
    siteList  = [
        "nettuts",
        "flashtuts",
        "webdesigntutsplus",
        "psdtuts",
        "vectortuts",
        "phototuts",
        "mobiletuts",
        "cgtuts",
        "audiotuts",
        "aetuts"
    ]

    if !siteList.include?(@siteName)
      @siteName = "nettuts"
    end

    # YQL query (SELECT * from feed ... ) // Split for readability
    path     = "http://query.yahooapis.com/v1/public/yql?q="
    path     += URI.escape("SELECT * FROM feed WHERE url='http://feeds.feedburner.com/#{@siteName}'", Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    path     += "&format=json"

    # Call YQL, and if the query didn't fail, cache the returned data
    response = Net::HTTP.get_response(URI.parse(path)).body

    #  Decode that shizzle
    @feed    = []
    JSON.parse(response)['query']['results']['item'].each do |feed|
      item         = {}
      item[:title] = feed['title']
      item[:uri]   = URI.escape(feed['guid']['content'], Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
      if @siteName == "psdtuts"
        item[:comments] = feed['comments']['content']
      else
        item[:comments] = feed['comments'][1]
      end
      @feed << item
    end

    # Activetuts is still using the old Flashtuts RSS path.
    if @siteName == "flashtuts"
      @siteName = "activetuts"
    elsif @siteName == "webdesigntutsplus"
      @siteName = "webdesigntuts"
    end
  end

  def article
    @siteName = params[:siteName]
    @origLink = params[:origLink]
    # Activetuts is still using the old Flashtuts RSS path.
    if @siteName == "activetuts"
      @siteName = "flashtuts"
    elsif @siteName == "webdesigntuts"
      @siteName = "webdesigntutsplus"
    end

    path     = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20feed%20where%20url%3D'http%3A%2F%2Ffeeds.feedburner.com%2F#{@siteName}'%20AND%20guid%3D%22#{@origLink}%22&format=json";

    # Call YQL, and if the query didn't fail, cache the returned data
    response = Net::HTTP.get_response(URI.parse(path)).body
    @feed    = JSON.parse(response)['query']['results']['item']

    # Activetuts is still using the old Flashtuts RSS path.
    if @siteName == "flashtuts"
      @siteName = "activetuts"
    elsif @siteName == "webdesigntutsplus"
      @siteName = "webdesigntuts"
    end
  end
end
