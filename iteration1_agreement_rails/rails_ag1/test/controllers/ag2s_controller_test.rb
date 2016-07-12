require 'test_helper'

class Ag2sControllerTest < ActionController::TestCase
  setup do
    @ag2 = ag2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ag2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ag2" do
    assert_difference('Ag2.count') do
      post :create, ag2: { author: @ag2.author, name: @ag2.name, title: @ag2.title }
    end

    assert_redirected_to ag2_path(assigns(:ag2))
  end

  test "should show ag2" do
    get :show, id: @ag2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ag2
    assert_response :success
  end

  test "should update ag2" do
    patch :update, id: @ag2, ag2: { author: @ag2.author, name: @ag2.name, title: @ag2.title }
    assert_redirected_to ag2_path(assigns(:ag2))
  end

  test "should destroy ag2" do
    assert_difference('Ag2.count', -1) do
      delete :destroy, id: @ag2
    end

    assert_redirected_to ag2s_path
  end
end
