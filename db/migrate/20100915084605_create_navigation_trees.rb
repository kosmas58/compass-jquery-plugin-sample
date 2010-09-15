class CreateNavigationTrees < ActiveRecord::Migration
  def self.up
    create_table :navigation_trees do |t|
      t.column :parent_id,            :integer, :limit => 2, :null => true
      t.column :id_path,              :string, :limit => 200, :null => true
      t.column :level,                :integer, :limit => 1, :null => true
      t.column :children_count,       :integer, :limit => 2, :null => true

      t.column :position,             :integer, :null => false
      t.column :left,                 :integer, :null => false
      t.column :right,                :integer, :null => false
      t.column :level,                :integer, :null => false
      t.column :title,                :text
      t.column :ntype,                :text,    :null => true
      
      t.column :href,                 :text
      t.column :icon,                 :text     
      
      t.timestamps 
    end

    add_index :navigation_trees, :parent_id
    add_index :navigation_trees, :id_path
  end
  
  def self.down
    drop_table :navigation_trees
  end
end
