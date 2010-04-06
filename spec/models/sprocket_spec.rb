require 'spec_helper'

describe Sprocket do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Sprocket.create!(@valid_attributes)
  end
end
