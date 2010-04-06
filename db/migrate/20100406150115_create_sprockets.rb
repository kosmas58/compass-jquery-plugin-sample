class CreateSprockets < ActiveRecord::Migration
  def self.up
    create_table :sprockets do |t|
      t.integer :widget_id
      t.integer :teeth
      t.timestamps
    end
  end

  def self.down
    drop_table :sprockets
  end
end
