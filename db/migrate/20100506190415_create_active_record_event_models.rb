class CreateActiveRecordEventModels < ActiveRecord::Migration
  def self.up
    create_table :events, :force => true do |t|
      t.string :ical_string, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
