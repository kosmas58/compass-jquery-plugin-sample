class CreateInvlines < ActiveRecord::Migration
  def self.up
    create_table :invlines, { :id => false } do |t|
      t.integer :id
      t.integer :num
      t.string  :item, :limit => 20
      t.decimal :qty, :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.decimal :unit, :precision => 10, :scale => 2, :null => false 
    end  
    add_index :invlines, [:id, :num], :unique => true
  end

  def self.down
    drop_table :invlines
  end
end
