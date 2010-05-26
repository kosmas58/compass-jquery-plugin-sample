class CreateJqicalEvents < ActiveRecord::Migration
  def self.up
    create_table :events, :force => true do |t|
      t.column :calendar_id,   :integer
      t.column :dtstart,       :datetime
      t.column :dtend,         :datetime
      t.column :summary,       :string
      t.column :description,   :text
      t.column :location,      :string
      t.column :all_day,       :boolean, :default => false, :null => false
      t.string :ical_string,   :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
