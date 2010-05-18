require File.dirname(__FILE__) + '/../../test_helper'
require 'ical/events_controller'

# Re-raise errors caught by the controller.
class Ical::EventsController; def rescue_action(e) raise e end; end

class Ical::EventsControllerTest < Test::Unit::TestCase
  fixtures :ical_events

  def setup
    @controller = Ical::EventsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:ical_events)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_events
    old_count = Ical::Events.count
    post :create, :events => { }
    assert_equal old_count + 1, Ical::Events.count

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
    old_count = Ical::Events.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Ical::Events.count

    assert_redirected_to ical_events_path
  end
end
