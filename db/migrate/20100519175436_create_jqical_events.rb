class CreateJqicalEvents < ActiveRecord::Migration
  def self.up
    create_table :jqical_events, :force => true do |t|
    end
  end

  def self.down
    drop_table :jqical_events
  end
end
