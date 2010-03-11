class CreateBirds < ActiveRecord::Migration
  def self.up
    create_table :birds do |t|
      t.string  :name,  :null => false
      t.string  :scientific_name, :null => false
    end
  end

  def self.down
    drop_table :birds
  end
end
