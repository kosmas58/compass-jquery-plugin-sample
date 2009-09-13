class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.column :start_date,                :datetime
      t.column :end_date,                  :datetime
      t.column :title,                     :string, :limit => 40 
    end    
   
    Event.create(:start_date=> 24.hours.from_now, :end_date => 25.hours.from_now, :title => "Test Event 1")    
    Event.create(:start_date=> 48.hours.from_now, :end_date => 49.hours.from_now, :title => "Test Event 2")   
  end

  def self.down
    drop_table :events
  end
end
