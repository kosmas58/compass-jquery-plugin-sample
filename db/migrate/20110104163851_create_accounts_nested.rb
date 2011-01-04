class CreateAccountsNested < ActiveRecord::Migration
  def self.up
    create_table :accounts_nested do |t|

      t.integer :parent_id, :default => nil
      t.string  :name, :limit => 128, :null => false
      t.string  :num, :limit => 128, :null => false
      t.integer :debit, :null => false
      t.integer :credit, :null => false
      t.integer :balance, :null => false
      t.integer :level, :null => false
      t.integer :lft, :null => false
      t.integer :rgt , :null => false
    end
    add_index :accounts_nested, :parent_id
  end

  def self.down
    drop_table :accounts_nested
  end
end
