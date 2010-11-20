class ManifestController < ApplicationController
 
  def show
    headers['Content-Type'] = 'text/cache-manifest'
    render :text => Manifesto.cache, :layout => false
  end
end
