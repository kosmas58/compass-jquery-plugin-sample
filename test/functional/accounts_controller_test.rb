require File.dirname(__FILE__) + '/../test_helper'
require 'accounts_controller'

# Re-raise errors caught by the controller.
class AccountsController; def rescue_action(e) raise e end; end

class AccountsControllerTest < Test::Unit::TestCase
  fixtures :accounts

  def setup
    @controller = AccountsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:accounts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_account
    old_count = Account.count
    post :create, :account => { }
    assert_equal old_count + 1, Account.count

    assert_redirected_to account_path(assigns(:account))
  end

  def test_should_show_account
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_account
    put :update, :id => 1, :account => { }
    assert_redirected_to account_path(assigns(:account))
  end

  def test_should_destroy_account
    old_count = Account.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Account.count

    assert_redirected_to accounts_path
  end
end
