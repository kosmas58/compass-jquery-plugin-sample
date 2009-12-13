require File.dirname(__FILE__) + '/../../spec_helper'

describe Jqtouch::DemoController, "#route_for" do

  it "should map { :controller => 'jqtouch/demos', :action => 'index' } to /jqtouch/demos" do
    route_for(:controller => "jqtouch/demos", :action => "index").should == "/jqtouch/demos"
  end
  
  it "should map { :controller => 'jqtouch/demos', :action => 'new' } to /jqtouch/demos/new" do
    route_for(:controller => "jqtouch/demos", :action => "new").should == "/jqtouch/demos/new"
  end
  
  it "should map { :controller => 'jqtouch/demos', :action => 'show', :id => 1 } to /jqtouch/demos/1" do
    route_for(:controller => "jqtouch/demos", :action => "show", :id => "1").should == "/jqtouch/demos/1"
  end
  
  it "should map { :controller => 'jqtouch/demos', :action => 'edit', :id => 1 } to /jqtouch/demos/1/edit" do
    route_for(:controller => "jqtouch/demos", :action => "edit", :id => "1").should == "/jqtouch/demos/1/edit"
  end
  
  it "should map { :controller => 'jqtouch/demos', :action => 'update', :id => 1} to /jqtouch/demos/1" do
    route_for(:controller => "jqtouch/demos", :action => "update", :id => "1").should == { :path => "/jqtouch/demos/1", :method => :put}
  end
  
  it "should map { :controller => 'jqtouch/demos', :action => 'destroy', :id => 1} to /jqtouch/demos/1" do
    route_for(:controller => "jqtouch/demos", :action => "destroy", :id => "1").should == { :path => "/jqtouch/demos/1", :method => :delete}
  end

  it "should map { :controller => 'jqtouch/demos', :action => 'create'} to /jqtouch/demos" do
    route_for(:controller => "jqtouch/demos", :action => "create").should == { :path => "/jqtouch/demos", :method => :post}
  end

end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos" do

  before do
    @demo = mock_model(Clock)
    Clock.stub!(:find).and_return([@demo])
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
  
  it "should find all jqtouch/demos" do
    Clock.should_receive(:find).with(:all).and_return([@demo])
    do_get
  end
  
  it "should assign the found jqtouch/demos for the view" do
    do_get
    assigns[:demos].should == [@demo]
  end
end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos.xml" do

  before do
    @demo = mock_model(Clock, :to_xml => "XML")
    Clock.stub!(:find).and_return(@demo)
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :index
  end
  
  it "should be successful" do
    do_get
    response.should be_success
  end

  it "should find all jqtouch/demos" do
    Clock.should_receive(:find).with(:all).and_return([@demo])
    do_get
  end
  
  it "should render the found jqtouch/demo as xml" do
    @demo.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos/1" do

  before do
    @demo = mock_model(Clock)
    Clock.stub!(:find).and_return(@demo)
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
  
  it "should find the demo requested" do
    Clock.should_receive(:find).with("1").and_return(@demo)
    do_get
  end
  
  it "should assign the found demo for the view" do
    do_get
    assigns[:demo].should equal(@demo)
  end
end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos/1.xml" do

  before do
    @demo = mock_model(Clock, :to_xml => "XML")
    Clock.stub!(:find).and_return(@demo)
  end
  
  def do_get
    @request.env["HTTP_ACCEPT"] = "application/xml"
    get :show, :id => "1"
  end

  it "should be successful" do
    do_get
    response.should be_success
  end
  
  it "should find the demo requested" do
    Clock.should_receive(:find).with("1").and_return(@demo)
    do_get
  end
  
  it "should render the found demo as xml" do
    @demo.should_receive(:to_xml).and_return("XML")
    do_get
    response.body.should == "XML"
  end
end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos/new" do

  before do
    @demo = mock_model(Clock)
    Clock.stub!(:new).and_return(@demo)
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
  
  it "should create an new demo" do
    Clock.should_receive(:new).and_return(@demo)
    do_get
  end
  
  it "should not save the new demo" do
    @demo.should_not_receive(:save)
    do_get
  end
  
  it "should assign the new demo for the view" do
    do_get
    assigns[:demo].should equal(@demo)
  end
end

describe Jqtouch::DemoController, "handling GET /jqtouch/demos/1/edit" do

  before do
    @demo = mock_model(Clock)
    Clock.stub!(:find).and_return(@demo)
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
  
  it "should find the demo requested" do
    Clock.should_receive(:find).and_return(@demo)
    do_get
  end
  
  it "should assign the found demo for the view" do
    do_get
    assigns[:demo].should equal(@demo)
  end
end

describe Jqtouch::DemoController, "handling POST /jqtouch/demos" do

  before do
    @demo = mock_model(Clock, :to_param => "1")
    Clock.stub!(:new).and_return(@demo)
  end
  
  def post_with_successful_save
    @demo.should_receive(:save).and_return(true)
    post :create, :demo => {}
  end
  
  def post_with_failed_save
    @demo.should_receive(:save).and_return(false)
    post :create, :demo => {}
  end
  
  it "should create a new demo" do
    Clock.should_receive(:new).with({}).and_return(@demo)
    post_with_successful_save
  end

  it "should redirect to the new demo on successful save" do
    post_with_successful_save
    response.should redirect_to(jqtouch_demo_url("1"))
  end

  it "should re-render 'new' on failed save" do
    post_with_failed_save
    response.should render_template('new')
  end
end

describe Jqtouch::DemoController, "handling PUT /jqtouch/demos/1" do

  before do
    @demo = mock_model(Clock, :to_param => "1")
    Clock.stub!(:find).and_return(@demo)
  end
  
  def put_with_successful_update
    @demo.should_receive(:update_attributes).and_return(true)
    put :update, :id => "1"
  end
  
  def put_with_failed_update
    @demo.should_receive(:update_attributes).and_return(false)
    put :update, :id => "1"
  end
  
  it "should find the demo requested" do
    Clock.should_receive(:find).with("1").and_return(@demo)
    put_with_successful_update
  end

  it "should update the found demo" do
    put_with_successful_update
    assigns(:demo).should equal(@demo)
  end

  it "should assign the found demo for the view" do
    put_with_successful_update
    assigns(:demo).should equal(@demo)
  end

  it "should redirect to the demo on successful update" do
    put_with_successful_update
    response.should redirect_to(jqtouch_demo_url("1"))
  end

  it "should re-render 'edit' on failed update" do
    put_with_failed_update
    response.should render_template('edit')
  end
end

describe Jqtouch::DemoController, "handling DELETE /jqtouch/demo/1" do

  before do
    @demo = mock_model(Clock, :destroy => true)
    Clock.stub!(:find).and_return(@demo)
  end
  
  def do_delete
    delete :destroy, :id => "1"
  end

  it "should find the demo requested" do
    Clock.should_receive(:find).with("1").and_return(@demo)
    do_delete
  end
  
  it "should call destroy on the found demo" do
    @demo.should_receive(:destroy)
    do_delete
  end
  
  it "should redirect to the jqtouch/demos list" do
    do_delete
    response.should redirect_to(jqtouch_demos_url)
  end
end
