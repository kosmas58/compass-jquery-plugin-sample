class NavigationController < ApplicationController
  layout 'navigation'
  #protect_from_forgery

  def edit
    @tree = NavigationTree.find(params[:id])

    respond_to do |format|
      format.html do
        flash[:notice] = ""
        render(:partial => "form", :layout => false)
      end
      format.js do
        flash[:notice] = ""
        render(:partial => "form", :layout => false)
      end
    end
  end

  def update
    @tree = NavigationTree.find(params[:id])
    @tree.attributes = params[:navigation_tree]
    @tree.save

    respond_to do |format|
      format.html do
        if request.xhr?
          flash[:notice] = I18n.t('make_resourceful.update.success')
          render(:partial => "form", :layout => false)
        else
          redirect_to :action => :index
        end
      end
      format.js do
        if request.xhr?
          flash[:notice] = I18n.t('make_resourceful.update.success')
          render(:partial => "form", :layout => false)
        else
          redirect_to :action => :index
        end
      end
    end
  end

  def test
    #@accordions = NavigationTree.find_by_title("ROOT").children
  end

  def get_children
    tree = NavigationTree.get_children(params[:id])
    render :json => tree.to_json, :layout => false
  end

  def search
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid

      format.json do
        nodes = NavigationTree.search(params[:search_str])
        render :json => nodes.to_json, :layout => false
      end
    end
  end

  def create
    result = NavigationTree.create_node(params)
    render :json => result.to_json, :layout => false
  end

  def destroy
    result = NavigationTree.remove_node(params[:id])
    render :json => result.to_json, :layout => false
  end

  def rename
    result = NavigationTree.rename_node(params)
    render :json => result.to_json, :layout => false
  end

  def move
    result = NavigationTree.move_node(params)
    render :json => result.to_json, :layout => false
  end

  def analyze
    result = NavigationTree.analyze()
    render :text => result, :status => 200
  end

  def seed
    NavigationTree.seed()
    flash[:notice] = I18n.t('txt.layout.navigation.seed')
    redirect_to :action => :index
  end
end
