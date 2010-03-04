class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts, :force => true do |t|
      t.integer :parent_id, :default => nil
      t.string  :name, :limit => 128, :null => false
      t.string  :acc_num, :limit => 128, :null => false
      t.integer :debit, :null => false
      t.integer :credit, :null => false
      t.integer :balance, :null => false
      t.integer :level, :null => false
      t.integer :lft, :null => false
      t.integer :rgt , :null => false     
    end
  end

  def self.down
    drop_table :accounts
  end
end
