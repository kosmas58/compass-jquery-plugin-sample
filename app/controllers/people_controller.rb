class PeopleController < ApplicationController
  layout 'blueprint'
  
  def grid_data
    @people = Person.all(:order => "#{params[:sidx]} #{params[:sord]}")
     
    respond_to do |format|
      format.xml { render :partial => 'grid_data.xml.builder', :layout => false }
    end   
  end
  
end