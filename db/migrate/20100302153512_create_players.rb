class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :pseudo
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
