class Jqgrid::SprocketsController < ApplicationController
  layout 'secretsauce'
    
  def index
    respond_to do |format|
      format.html {render_grid}
      format.json {render :json => Sprocket.find_for_grid_3(params)}
    end
  end
  
  
end
