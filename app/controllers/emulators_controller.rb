class EmulatorsController < ApplicationController
  layout 'emulators' , :except => [ :edit ]

  protect_from_forgery

  def index
    @device = params[:device]
    @orientation = params[:orientation]
    @action = params[:url]

    case @device
      when "bb.playbook"
        scale = scale(169.55)
        @width  = @orientation == "landscape" ? 1024 :  600
        @height = @orientation == "landscape" ?  600 : 1024
      when "bb.torch"
        scale = scale(188.68)
        @width  = @orientation == "landscape" ? 480 : 360
        @height = @orientation == "landscape" ? 360 : 480
      when "galaxy.ace"
        scale = scale(164.83)
        @width  = @orientation == "landscape" ? 480 : 320
        @height = @orientation == "landscape" ? 300 : 460
      when "galaxy.s"
        scale = scale(233.24)
        @width  = @orientation == "landscape" ? 800 : 480
        @height = @orientation == "landscape" ? 445 : 765
      when "galaxy.s2"
        scale = scale(216.97)
        @width  = @orientation == "landscape" ? 800 : 480
        @height = @orientation == "landscape" ? 443 : 765
      when "galaxy.tab.7"
        scale = scale(169.55)
        @width  = @orientation == "landscape" ? 1024 : 600
        @height = @orientation == "landscape" ?  575 : 999
      when "galaxy.tab.7.7"
        scale = scale(196.03)
        @width  = @orientation == "landscape" ? 1280 :  800
        @height = @orientation == "landscape" ?  752 : 1230
      when "galaxy.tab.8.9"
        scale = scale(169.6)
        @width  = @orientation == "landscape" ? 1280 :  800
        @height = @orientation == "landscape" ?  708 : 1188
      when "galaxy.tab.10.1"
        scale = scale(149.45)
        @width  = @orientation == "landscape" ? 1280 :  800
        @height = @orientation == "landscape" ?  708 : 1188
      when "htc.sensation"
        scale = scale(269.62)
        @width  = @orientation == "landscape" ? 960 : 540
        @height = @orientation == "landscape" ? 500 : 920
      when "ideos.x3"
        scale = scale(180.28)
        @width  = @orientation == "landscape" ? 480 : 320
        @height = @orientation == "landscape" ? 320 : 480
      when "ipad"
        scale = scale(131.96)
        @width  = @orientation == "landscape" ? 1024 :  768
        @height = @orientation == "landscape" ?  748 : 1004
      when "iphone.3"
        scale = scale(164.83)
        @width  = @orientation == "landscape" ? 480 : 320
        @height = @orientation == "landscape" ? 300 : 460
      when "iphone.4"
        scale = scale(329.65)
        @width  = @orientation == "landscape" ? 960 : 640
        @height = @orientation == "landscape" ? 601 : 921
    end
  end

  def edit
    render :layout => 'emulators2'
  end

  protected

  def scale(value)
    cookies[:scaling_factor] = (cookies[:ppi].to_f/value).round_to(2)
  end

end
