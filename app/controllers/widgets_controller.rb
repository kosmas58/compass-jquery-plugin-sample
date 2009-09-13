class WidgetsController < ApplicationController
  layout 'blueprint'

  def index
    respond_to do |format|
      format.html
      format.json {render :json => Widget.find_for_grid(params)}
    end
  end
  
  def edit
    @widget = Widget.find(params[:id])
    return render(:partial => "form")
  end
  
  def new
    @widget = Widget.new
    return render(:partial => "form")
  end
  
  def create
    @widget = Widget.new(params[:widget])
    if @widget.save
      return render(:nothing => true)
    else
      return render(:partial => "form")
    end
  end
  
  def update
    @widget = Widget.update(params[:id], params[:widget])
    if @widget.save
      return render(:nothing => true)
    else
      if request.xhr?
        return render(:partial => "form")
      end
    end
  end
  
  def destroy
    @widget = Widget.find(params[:id])
    @widget.destroy
    if request.xhr?
      return render(:nothing => true)
    else
      redirect_to widgets_url
    end
  end

end
