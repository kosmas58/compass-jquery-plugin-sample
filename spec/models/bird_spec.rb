require 'spec_helper'

describe Bird do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Bird.create!(@valid_attributes)
  end
end
