class Mobile::Docs::Pages::DynamicController < ApplicationController
  layout 'mobile'

  protect_from_forgery

   def category

    case params[:id]
      when "animals"
        json = '{
          "name": "Animals",
		      "description": "All your favorites from aardvarks to zebras.",
		      "items": [
                     {"name": "Pets"},
                     {"name": "Farm Animals"},
                     {"name": "Wild Animals"}
                   ]
        }'
      when "colors"
        json = '{
          "name": "Colors",
		      "description": "Fresh colors from the magic rainbow.",
		      "items": [
                     {"name": "Blue"},
                     {"name": "Green"},
                     {"name": "Orange"},
                     {"name": "Purple"},
                     {"name": "Red"},
                     {"name": "Yellow"},
                     {"name": "Violet"}
                   ]
        }'
      when "vehicles"
        json = '{
          "name": "Vehicles",
		      "description": "Everything from cars to planes.",
		      "items": [
                     {"name": "Cars"},
                     {"name": "Planes"},
                     {"name": "Construction"}
                   ]
        }'
    end

    respond_to do |format|
      format.json { render :json => json, :layout => false }
    end
  end


end