class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name, :limit => 120, :null => false
    end
  end

  def self.down
    drop_table :clients
  end
end
