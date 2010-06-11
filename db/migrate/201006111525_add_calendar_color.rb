class AddCalendarColor < ActiveRecord::Migration
  def self.up
    add_column    :calendars, :color, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :calendars, :color
  end
end
