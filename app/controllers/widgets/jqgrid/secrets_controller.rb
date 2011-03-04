class Widgets::Jqgrid::SecretsController < ApplicationController
  layout 'secret_sauce'

  protect_from_forgery

  def index
    respond_to do |format|
      format.html
      format.json { render :json => Secret.find_for_grid_2(params) }
    end
  end

  def edit
    @secret = Secret.find(params[:id])
    return render(:partial => "form")
  end

  def new
    @secret = Secret.new
    return render(:partial => "form")
  end

  def create
    @secret = Secret.new(params[:secret])
    if @secret.save
      redirect_to :action => :index, :format => :html
    else
      return render(:partial => "form")
    end
  end

  def update
    @secret = Secret.update(params[:id], params[:secret])
    if @secret.save
      redirect_to :action => :index, :format => :html
    else
      if request.xhr?
        return render(:partial => "form")
      end
    end
  end

  def destroy
    @secret = Secret.find(params[:id])
    @secret.destroy
    if request.xhr?
      return render(:nothing => true)
    else
      redirect_to :action => :index, :format => :html
    end
  end
end
