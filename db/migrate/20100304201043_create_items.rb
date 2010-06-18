class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :item, :limit => 200
      t.string :cd, :limit => 15
    end    
    add_index :items, :cd
  end 

  def self.down
    drop_table :items
  end
end
