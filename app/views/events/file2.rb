class CreateCalendars < ActiveRecord::Migration
  def self.up
    create_table :calendars do |t|
      t.column :name, :string
      t.timestamps
    end
  end
  
  def self.down
    drop_table :calendars
  end
end

class CreateCalendarEvents < ActiveRecord::Migration
  def self.up
    create_table :calendar_events do |t|
      t.column :calendar_id,   :integer
      t.column :start,         :datetime
      t.column :end,           :datetime
      t.column :frequency,     :string
      t.column :interval,      :integer
      t.column :until,         :datetime 
      t.column :description,   :string
      t.column :location,      :string
      t.column :all_day,       :boolean
      t.timestamps
    end
  end
  
  def self.down
    drop_table :calendar_events
  end
end
