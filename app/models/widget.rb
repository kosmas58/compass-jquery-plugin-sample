class Widget < ActiveRecord::Base
  validates_numericality_of :cogs
  validates_presence_of :cogs, :name

  has_many :sprockets
end
