require File.dirname(__FILE__) + '/../spec_helper'

describe IphoneController, "#route_for" do

  it "should map { :controller => 'iphone', :action => 'index' } to /iphone" do
    route_for(:controller => "iphone", :action => "index").should == "/iphone"
  end
  
end

describe IphoneController, "handling GET /iphone" do
  
  def do_get
    get :index
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should render index template" do
    do_get
    response.should render_template('index')
  end
  
end
