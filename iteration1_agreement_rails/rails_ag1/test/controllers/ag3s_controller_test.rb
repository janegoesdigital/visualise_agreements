require 'test_helper'

class Ag3sControllerTest < ActionController::TestCase
  setup do
    @ag3 = ag3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ag3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ag3" do
    assert_difference('Ag3.count') do
      post :create, ag3: { author: @ag3.author, name: @ag3.name, title: @ag3.title }
    end

    assert_redirected_to ag3_path(assigns(:ag3))
  end

  test "should show ag3" do
    get :show, id: @ag3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ag3
    assert_response :success
  end

  test "should update ag3" do
    patch :update, id: @ag3, ag3: { author: @ag3.author, name: @ag3.name, title: @ag3.title }
    assert_redirected_to ag3_path(assigns(:ag3))
  end

  test "should destroy ag3" do
    assert_difference('Ag3.count', -1) do
      delete :destroy, id: @ag3
    end

    assert_redirected_to ag3s_path
  end
end
