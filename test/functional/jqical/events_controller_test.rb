require File.dirname(__FILE__) + '/../../test_helper'
require 'jqical/events_controller'

# Re-raise errors caught by the controller.
class Jqical::EventsController; def rescue_action(e) raise e end; end

class Jqical::EventsControllerTest < Test::Unit::TestCase
  fixtures :jqical_events

  def setup
    @controller = Jqical::EventsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:jqical_events)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_events
    old_count = Jqical::Events.count
    post :create, :events => { }
    assert_equal old_count + 1, Jqical::Events.count

    assert_redirected_to events_path(assigns(:events))
  end

  def test_should_show_events
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_events
    put :update, :id => 1, :events => { }
    assert_redirected_to events_path(assigns(:events))
  end

  def test_should_destroy_events
    old_count = Jqical::Events.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Jqical::Events.count

    assert_redirected_to jqical_events_path
  end
end
