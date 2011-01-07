class CreateDemoTrees < ActiveRecord::Migration
  def self.up
    create_table :demo_trees do |t|
      t.column :parent_id,            :integer, :limit => 2, :null => true, :default => 0
      t.column :position,             :integer, :limit => 2, :null => false, :default => 0
      t.column :left,                 :integer, :limit => 2, :null => false, :default => 0
      t.column :right,                :integer, :limit => 2, :null => false, :default => 0
      t.column :ntype,                :text,    :null => true,  :default => "default"
      t.column :title,                :text
    end
    add_index :demo_trees, :parent_id
  end

  def self.down
    drop_table :demo_trees
  end
end
