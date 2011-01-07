class CreateNavigationTrees < ActiveRecord::Migration
  def self.up
    create_table :navigation_trees do |t|
      t.column :parent_id,            :integer, :limit => 3, :null => true, :default => 0
      t.column :position,             :integer, :limit => 3, :null => false, :default => 0
      t.column :left,                 :integer, :limit => 3, :null => false, :default => 0
      t.column :right,                :integer, :limit => 3, :null => false, :default => 0
      t.column :ntype,                :text,    :null => true,  :default => "default"
      t.column :title,                :text 
      t.column :url,                  :text
      t.column :icon,                 :text
      t.timestamps 
    end
    add_index :navigation_trees, :parent_id
  end
  
  def self.down
    drop_table :navigation_trees
  end
end
