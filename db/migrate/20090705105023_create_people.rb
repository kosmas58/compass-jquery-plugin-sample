class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name, :last_name, :title, :i_can_has_cheezburger
    end
  end

  def self.down
    drop_table :people
  end
end