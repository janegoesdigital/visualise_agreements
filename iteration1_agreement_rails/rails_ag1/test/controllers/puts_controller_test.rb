require 'test_helper'

class PutsControllerTest < ActionController::TestCase
  setup do
    @put = puts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create put" do
    assert_difference('Put.count') do
      post :create, put: { content: @put.content, name: @put.name }
    end

    assert_redirected_to put_path(assigns(:put))
  end

  test "should show put" do
    get :show, id: @put
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @put
    assert_response :success
  end

  test "should update put" do
    patch :update, id: @put, put: { content: @put.content, name: @put.name }
    assert_redirected_to put_path(assigns(:put))
  end

  test "should destroy put" do
    assert_difference('Put.count', -1) do
      delete :destroy, id: @put
    end

    assert_redirected_to puts_path
  end
end
