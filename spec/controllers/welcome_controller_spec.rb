require 'spec_helper'

describe WelcomeController do

  def mock_welcome(stubs={})
    @mock_welcome ||= mock_model(Welcome, stubs)
  end

  describe "GET index" do
    it "assigns all welcomes as @welcomes" do
      Welcome.stub(:find).with(:all).and_return([mock_welcome])
      get :index
      assigns[:welcomes].should == [mock_welcome]
    end
  end
end
