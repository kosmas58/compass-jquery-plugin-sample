require File.dirname(__FILE__) + '/../../test_helper'
require 'jqical/calendars_controller'

# Re-raise errors caught by the controller.
class Jqical::CalendarsController; def rescue_action(e) raise e end; end

class Jqical::CalendarsControllerTest < Test::Unit::TestCase
  fixtures :jqical_calendars

  def setup
    @controller = Jqical::CalendarsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:jqical_calendars)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_calendars
    old_count = Jqical::Calendars.count
    post :create, :calendars => { }
    assert_equal old_count + 1, Jqical::Calendars.count

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
    old_count = Jqical::Calendars.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Jqical::Calendars.count

    assert_redirected_to jqical_calendars_path
  end
end
