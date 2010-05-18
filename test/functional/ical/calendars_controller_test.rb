require File.dirname(__FILE__) + '/../../test_helper'
require 'ical/calendars_controller'

# Re-raise errors caught by the controller.
class Ical::CalendarsController; def rescue_action(e) raise e end; end

class Ical::CalendarsControllerTest < Test::Unit::TestCase
  fixtures :ical_calendars

  def setup
    @controller = Ical::CalendarsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:ical_calendars)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_calendars
    old_count = Ical::Calendars.count
    post :create, :calendars => { }
    assert_equal old_count + 1, Ical::Calendars.count

    assert_redirected_to calendars_path(assigns(:calendars))
  end

  def test_should_show_calendars
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_calendars
    put :update, :id => 1, :calendars => { }
    assert_redirected_to calendars_path(assigns(:calendars))
  end

  def test_should_destroy_calendars
    old_count = Ical::Calendars.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Ical::Calendars.count

    assert_redirected_to ical_calendars_path
  end
end
