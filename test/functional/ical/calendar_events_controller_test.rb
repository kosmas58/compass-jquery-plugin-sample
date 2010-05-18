require File.dirname(__FILE__) + '/../../test_helper'
require 'ical/calendar_events_controller'

# Re-raise errors caught by the controller.
class Ical::CalendarEventsController; def rescue_action(e) raise e end; end

class Ical::CalendarEventsControllerTest < Test::Unit::TestCase
  fixtures :ical_calendar_events

  def setup
    @controller = Ical::CalendarEventsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:ical_calendar_events)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_calendar_events
    old_count = Ical::CalendarEvents.count
    post :create, :calendar_events => { }
    assert_equal old_count + 1, Ical::CalendarEvents.count

    assert_redirected_to calendar_events_path(assigns(:calendar_events))
  end

  def test_should_show_calendar_events
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_calendar_events
    put :update, :id => 1, :calendar_events => { }
    assert_redirected_to calendar_events_path(assigns(:calendar_events))
  end

  def test_should_destroy_calendar_events
    old_count = Ical::CalendarEvents.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Ical::CalendarEvents.count

    assert_redirected_to ical_calendar_events_path
  end
end
