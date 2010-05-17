require 'spec_helper'

describe Calendar do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Calendar.create!(@valid_attributes)
  end
end
