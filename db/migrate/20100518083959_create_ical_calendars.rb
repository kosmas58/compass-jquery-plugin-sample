class CreateIcalCalendars < ActiveRecord::Migration
  def self.up
    create_table :calendars, :force => true do |t|
      t.column :name, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :calendars
  end
end
