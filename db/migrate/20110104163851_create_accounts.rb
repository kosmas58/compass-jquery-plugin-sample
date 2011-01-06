class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|

      t.integer :parent_id, :default => nil
      t.string  :name,      :limit => 128, :null => false, :default => 0
      t.string  :acc_num,   :limit => 128, :null => false, :default => 0
      t.column  :debit,     :decimal, :precision => 10, :scale => 8, :null => false, :default => 0
      t.column  :credit,    :decimal, :precision => 10, :scale => 8, :null => false, :default => 0
      t.column  :balance,   :decimal, :precision => 10, :scale => 8, :null => false, :default => 0
      t.column  :enabled,   :boolean, :default => 0
      t.integer :level,     :null => false, :default => 0
      t.integer :lft,       :null => false, :default => 0
      t.integer :rgt ,      :null => false, :default => 0
    end
    add_index :accounts, :parent_id
  end

  def self.down
    drop_table :accounts
  end
end
