class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :item, :limit => 200
      t.steing :cd, :limit => 15
    end
  end

  def self.down
    drop_table :items
  end
end
