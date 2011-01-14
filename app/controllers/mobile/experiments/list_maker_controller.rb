class Mobile::Experiments::ListMakerController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery
  
  def manifest
    manifest = "CACHE MANIFEST\n\n" +
               #"/mobile/experiments/list_maker\n" +
               "/stylesheets/compiled/jquery/mobile/default.css\n" +
               "/javascripts/jquery.min.js\n" +
               "/javascripts/jquery.tmpl.min.js\n" +
               "/javascripts/jquery.mobile.min.js\n" +
               "/javascripts/jquery.offline.min.js\n" +
               "/javascripts/json.min.js\n" +
               "/javascripts/locales.js\n" +
               "/javascripts/common.js\n\n"
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => manifest, :layout => false
  end
  
  def index
    @items = ListItem.all
    respond_to do |format|
      format.html 
      format.json do 
        render :json => @items
      end
    end
  end

  def create
    ListItem.create!(:name => params[:name])
    redirect_to :action => :index
  end
end
