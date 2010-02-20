require 'spec_helper'

describe WelcomeController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/welcome" }.should route_to(:controller => "welcome", :action => "index")
    end
  end
end
