require 'spec_helper'

describe Animal do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Animal.create!(@valid_attributes)
  end
end
