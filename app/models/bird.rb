class Bird < ActiveRecord::Base
  include JqueryAutoComplete

  def self.to_auto_complete(format=:json, find_options={})
    self.find(:all, find_options).to_auto_complete(format, [:scientific_name, :name, :name])
  end
end