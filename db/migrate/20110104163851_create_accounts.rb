class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|

      t.integer :parent_id, :default => nil
      t.string  :name, :limit => 128, :null => false
      t.string  :num, :limit => 128, :null => false
      t.column  :debit, :decimal, :precision => 10, :scale => 8, :null => false
      t.column  :credit, :decimal, :precision => 10, :scale => 8, :null => false
      t.column  :balance, :decimal, :precision => 10, :scale => 8, :null => false
      t.integer :level, :null => false
      t.integer :lft, :null => false
      t.integer :rgt , :null => false
    end
    add_index :accounts, :parent_id
  end

  def self.down
    drop_table :accounts
  end
end
