class CreateJqicalEvents < ActiveRecord::Migration
  def self.up
    create_table :events, :force => true do |t|
      t.column :calendar_id,   :integer
      t.column :dtstart,       :datetime
      t.column :dtend,         :datetime
#      t.column :frequency,     :string
#      t.column :interval,      :integer
#      t.column :until,         :datetime 
      t.column :summary,       :string
      t.column :description,   :string
      t.column :location,      :string
      t.column :all_day,       :boolean
      t.string :ical_string,   :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
