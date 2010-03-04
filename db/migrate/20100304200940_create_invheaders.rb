class CreateInvheaders < ActiveRecord::Migration
  def self.up
    create_table :invheaders do |t|
      t.date    :invdate
      t.integer :client_id
      t.decimal :amount, :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.decimal :tax, :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.decimal :total, :precision => 10, :scale => 2, :default => 0.0, :null => false
      t.string  :note, :limit => 100
      t.string  :closed, :limit => 3, :default => 'No'
      t.string  :ship_via, :limit => 3
    end
  end

  def self.down
    drop_table :invheaders
  end
end
