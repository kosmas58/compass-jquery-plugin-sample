class CreateJqicalCalendars < ActiveRecord::Migration
  def self.up
    create_table :jqical_calendars, :force => true do |t|
    end
  end

  def self.down
    drop_table :jqical_calendars
  end
end
