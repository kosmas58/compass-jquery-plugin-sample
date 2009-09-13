class CreateDummyPeopleDataMigration < ActiveRecord::Migration
  def self.up
    Person.create :first_name =>"He", :last_name => "Man", :title => "Hero", :i_can_has_cheezburger => "Sure"
    Person.create :first_name =>"Bat", :last_name => "Man", :title => "Mr.", :i_can_has_cheezburger => "Yeah"
    Person.create :first_name =>"Cat", :last_name => "Woman", :title => "Ms.", :i_can_has_cheezburger => "Yes"
    Person.create :first_name => "Super", :last_name => "Man", :title => "d00d", :i_can_has_cheezburger => "Nope" 
    Person.create :first_name => "Spider", :last_name => "Man", :title => "Mr.", :i_can_has_cheezburger => "Meh"
    Person.create :first_name => "Chuck", :last_name => "Norris", :title => "Sir", :i_can_has_cheezburger => "Who is asking?"
    Person.create :first_name => "G.I.", :last_name => "Joe", :title => "Sgt", :i_can_has_cheezburger => "What is a cheezeburger?"
     
  end

  def self.down
    Person.destroy_all
  end
end