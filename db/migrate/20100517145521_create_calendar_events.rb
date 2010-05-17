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
      t.string :ical_string,   :null => false
      t.timestamps
    end
  end
  
  def self.down
    drop_table :calendar_events
  end
end
