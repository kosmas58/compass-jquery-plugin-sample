class CreateSecrets < ActiveRecord::Migration
  def self.up
    create_table :secrets do |t|
      t.string :name
      t.text :description
      t.integer :cogs
      t.datetime :patent_date      
      t.timestamps
    end
  end

  def self.down
    drop_table :secrets
  end
end
