class EmulatorsController < ApplicationController
  layout 'emulators'

  protect_from_forgery

  def index
    @device = params[:device]
    @orientation = params[:orientation]
    @action = params[:url]

    case @device
      when "blackberry.torch"
        @scale = scale(188.68)
      when "galaxy.s"
        @scale = scale(233.24)
      when "galaxy.s2"
        @scale = scale(216.97)
      when "galaxy.tab.7"
        @scale = scale(169.55)
      when "galaxy.tab.10.1"
        @scale = scale(149.45)
      when "ipad"
        @scale = scale(116.07)
      when "iphone.3"
        @scale = scale(164.83)
      when "iphone.4"
        @scale = scale(329.65)
      when "palm.pre.2"
        @scale = scale(186.09)
    end
  end

  def update
    session[:ppi] = params[:ppi]
    render :nothing => true, :status => 200
  end

  protected

  def scale(value)
    return (session[:ppi].to_f/value).round_to(2)
  end

end
