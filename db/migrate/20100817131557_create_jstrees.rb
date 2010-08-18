class CreateJstrees < ActiveRecord::Migration
  def self.up
    create_table :jstrees do |t|
      t.column :parent_id,            :integer, :limit => 2, :null => true
      t.column :id_path,              :string, :limit => 200, :null => true
      t.column :level,                :integer, :limit => 1, :null => true
      t.column :children_count,       :integer, :limit => 2, :null => true

      #optional
      t.column :family_id,            :integer, :limit => 2, :null => true
    
      t.column :position,             :integer, :null => false
      t.column :left,                 :integer, :null => false
      t.column :right,                :integer, :null => false
      t.column :level,                :integer, :null => false
      t.column :title,                :text
      t.column :ntype,                :text, :null => true    
    end

    add_index :jstrees, :parent_id
    add_index :jstrees, :id_path
  end

  def self.down
    drop_table :jstrees
  end
end
