class Jqtouch::Demo2Controller < ApplicationController
  layout 'jqt_jqt'

  protect_from_forgery

  def index
    unless session[:filterStatus]
      session[:filterStatus] = 0 # 0= none; 1=room; 2=artist; 3=technique; 4=style

      session[:tempRoomFilterId] = 0
      session[:tempArtistFilterId] = 0
      session[:tempTypeFilterId] = 0
      session[:tempStyleFilterId] = 0

      session[:roomFilterId] = 0
      session[:artistFilterId] = 0
      session[:typeFilterId] = 0
      session[:styleFilterId] = 0

      session[:galleryId] = 0
    end
  end

  def setfilter
    if params[:filter].present?
      stat = params[:filter].to_i

      result = 0
      filter = ""
      filerId = 0

      case stat
        when 1
          filterId = session[:roomFilterId] = session[:tempRoomFilterId]
          result = stat
          filter = "Room"
        when 2
          filterId = session[:artistFilterId] = session[:tempArtistFilterId]
          result = stat
          filter = "Artist"
        when 3
          filterId = session[:typeFilterId] = session[:tempTypeFilterId]
          result = stat
          filter = "Artwork"
        when 4
          filterId = session[:styleFilterId] = session[:tempStyleFilterId]
          result = stat
          filter = "Style"
      end

      hash = {}
      session[:filterStatus] = result
      hash["result"] = result;
      hash["filter"] = filter;
      hash["filterId"] = filterId;

      render :json => hash.to_json
    else
      render :nothing => true, :status => 200
    end
  end

  def show_image
    if params[:fName].present?
      @fname = params[:fName]
      render(:partial => "show_image")
    else
      render :nothing => true, :status => 200
    end
  end

  def room
    if params[:id].present?
      @fname = "/images/demo/touch/demo2/house_selected.png"
      render(:partial => "show_image")
    else
      render :nothing => true, :status => 200
    end
  end

  def art
    if params[:id].present?
      @fname = "/images/demo/touch/demo2/palette_selected.png"
      render(:partial => "show_image")
    else
      render :nothing => true, :status => 200
    end
  end

  def gallery
    if params[:id].present?
      render(:partial => "gallery")
    else
      render :nothing => true, :status => 200
    end
  end

  def get_gallery_array
    array = Array.new
    array = session[:galleryId]
    render :json => array.to_json
  end

  def get_hunt_arrays
    if params[:item].present?
      item = params[:item]

      array = Array.new
      array[0] = "Any"
      array[1] = "Some"
      array[2] = "Test"
      array[3] = "Hello"
      array[4] = "Goodbye"

      case item
        when 'type'
        when 'facility'
        when 'style'
      end
      render :json => array.to_json
    else
      render :nothing => true, :status => 200
    end
  end

  def get_random_hunt
    hash = {}
    hash["id"] = 1
    hash["picture"] = "/images/demo/touch/demo2/museum_startup.png"
    hash["room"] = 1
    render :json => hash.to_json
  end
end
