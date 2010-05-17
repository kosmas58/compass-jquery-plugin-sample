require 'spec_helper'

describe CalendarEvent do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    CalendarEvent.create!(@valid_attributes)
  end
end
