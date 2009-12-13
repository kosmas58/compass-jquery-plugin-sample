require File.dirname(__FILE__) + '/../../spec_helper'

describe Jqtouch::ClocksController, "#route_for" do

  it "should map { :controller => 'jqtouch/clocks', :action => 'index' } to /jqtouch/clocks" do
    route_for(:controller => "jqtouch/clocks", :action => "index").should == "/jqtouch/clocks"
  end
  
  it "should map { :controller => 'jqtouch/clocks', :action => 'new' } to /jqtouch/clocks/new" do
    route_for(:controller => "jqtouch/clocks", :action => "new").should == "/jqtouch/clocks/new"
  end
  
  it "should map { :controller => 'jqtouch/clocks', :action => 'show', :id => 1 } to /jqtouch/clocks/1" do
    route_for(:controller => "jqtouch/clocks", :action => "show", :id => "1").should == "/jqtouch/clocks/1"
  end
  
  it "should map { :controller => 'jqtouch/clocks', :action => 'edit', :id => 1 } to /jqtouch/clocks/1/edit" do
    route_for(:controller => "jqtouch/clocks", :action => "edit", :id => "1").should == "/jqtouch/clocks/1/edit"
  end
  
  it "should map { :controller => 'jqtouch/clocks', :action => 'update', :id => 1} to /jqtouch/clocks/1" do
    route_for(:controller => "jqtouch/clocks", :action => "update", :id => "1").should == { :path => "/jqtouch/clocks/1", :method => :put}
  end
  
  it "should map { :controller => 'jqtouch/clocks', :action => 'destroy', :id => 1} to /jqtouch/clocks/1" do
    route_for(:controller => "jqtouch/clocks", :action => "destroy", :id => "1").should == { :path => "/jqtouch/clocks/1", :method => :delete}
  end

  it "should map { :controller => 'jqtouch/clocks', :action => 'create'} to /jqtouch/clocks" do
    route_for(:controller => "jqtouch/clocks", :action => "create").should == { :path => "/jqtouch/clocks", :method => :post}
  end

end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks" do

  before do
    @clock = mock_model(Clock)
    Clock.stub!(:find).and_return([@clock])
  end
  
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
  
  it "should find all jqtouch/clocks" do
    Clock.should_receive(:find).with(:all).and_return([@clock])
    do_get
  end
  
  it "should assign the found jqtouch/clocks for the view" do
    do_get
    assigns[:clocks].should == [@clock]
  end
end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks.xml" do

  before do
    @clock = mock_model(Clock, :to_xml => "XML")
    Clock.stub!(:find).and_return(@clock)
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :index
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should find all jqtouch/clocks" do
    Clock.should_receive(:find).with(:all).and_return([@clock])
    do_get
  end
  
  it "should render the found jqtouch/clock as xml" do
    @clock.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks/1" do

  before do
    @clock = mock_model(Clock)
    Clock.stub!(:find).and_return(@clock)
  end
  
  def do_get
    get :show, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render show template" do
    do_get
    response.should render_template('show')
  end
  
  it "should find the clock requested" do
    Clock.should_receive(:find).with("1").and_return(@clock)
    do_get
  end
  
  it "should assign the found clock for the view" do
    do_get
    assigns[:clock].should equal(@clock)
  end
end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks/1.xml" do

  before do
    @clock = mock_model(Clock, :to_xml => "XML")
    Clock.stub!(:find).and_return(@clock)
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :show, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should find the clock requested" do
    Clock.should_receive(:find).with("1").and_return(@clock)
    do_get
  end
  
  it "should render the found clock as xml" do
    @clock.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks/new" do

  before do
    @clock = mock_model(Clock)
    Clock.stub!(:new).and_return(@clock)
  end
  
  def do_get
    get :new
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render new template" do
    do_get
    response.should render_template('new')
  end
  
  it "should create an new clock" do
    Clock.should_receive(:new).and_return(@clock)
    do_get
  end
  
  it "should not save the new clock" do
    @clock.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new clock for the view" do
    do_get
    assigns[:clock].should equal(@clock)
  end
end

describe Jqtouch::ClocksController, "handling GET /jqtouch/clocks/1/edit" do

  before do
    @clock = mock_model(Clock)
    Clock.stub!(:find).and_return(@clock)
  end
  
  def do_get
    get :edit, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should render edit template" do
    do_get
    response.should render_template('edit')
  end
  
  it "should find the clock requested" do
    Clock.should_receive(:find).and_return(@clock)
    do_get
  end
  
  it "should assign the found clock for the view" do
    do_get
    assigns[:clock].should equal(@clock)
  end
end

describe Jqtouch::ClocksController, "handling POST /jqtouch/clocks" do

  before do
    @clock = mock_model(Clock, :to_param => "1")
    Clock.stub!(:new).and_return(@clock)
  end
  
  def post_with_successful_save
    @clock.should_receive(:save).and_return(true)
    post :create, :clock => {}
  end
  
  def post_with_failed_save
    @clock.should_receive(:save).and_return(false)
    post :create, :clock => {}
  end
  
  it "should create a new clock" do
    Clock.should_receive(:new).with({}).and_return(@clock)
    post_with_successful_save
  end

  it "should redirect to the new clock on successful save" do
    post_with_successful_save
    response.should redirect_to(jqtouch_clock_url("1"))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe Jqtouch::ClocksController, "handling PUT /jqtouch/clocks/1" do

  before do
    @clock = mock_model(Clock, :to_param => "1")
    Clock.stub!(:find).and_return(@clock)
  end
  
  def put_with_successful_update
    @clock.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1"
  end
  
  def put_with_failed_update
    @clock.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1"
  end
  
  it "should find the clock requested" do
    Clock.should_receive(:find).with("1").and_return(@clock)
    put_with_successful_update
  end

  it "should update the found clock" do
    put_with_successful_update
    assigns(:clock).should equal(@clock)
  end

  it "should assign the found clock for the view" do
    put_with_successful_update
    assigns(:clock).should equal(@clock)
  end

  it "should redirect to the clock on successful update" do
    put_with_successful_update
    response.should redirect_to(jqtouch_clock_url("1"))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe Jqtouch::ClocksController, "handling DELETE /jqtouch/clock/1" do

  before do
    @clock = mock_model(Clock, :destroy => true)
    Clock.stub!(:find).and_return(@clock)
  end
  
  def do_delete
    delete :destroy, :id => "1"
  end

  it "should find the clock requested" do
    Clock.should_receive(:find).with("1").and_return(@clock)
    do_delete
  end
  
  it "should call destroy on the found clock" do
    @clock.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the jqtouch/clocks list" do
    do_delete
    response.should redirect_to(jqtouch_clocks_url)
  end
end
