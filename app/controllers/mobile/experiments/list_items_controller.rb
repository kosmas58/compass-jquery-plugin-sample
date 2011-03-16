class Mobile::Experiments::ListItemsController < ApplicationController
  layout 'mobile_offline'

  protect_from_forgery

  make_resourceful do
    actions :index, :create, :update, :destroy

    after :create do
      @list_item = current_model.find_by_id(current_object.id)
    end

    response_for :index do |format|
      format.html
      format.json do
        render :json => @current_objects
      end
    end

    response_for :create do |format|
      format.jsonr do
        render_json_response :ok, :html => "Item '<b>#{@list_item.name}</b>' added with Id = <b>#{@list_item.id}</b>.", :message => "Item created!"
      end
    end

    response_for :update do |format|
      format.jsonr do
         render_json_response :ok, :message => "Item updated."
      end
    end

    response_for :destroy do |format|
      format.jsonr do
         render_json_response :ok, :message => "Item deleted."
      end
    end
  end
end
