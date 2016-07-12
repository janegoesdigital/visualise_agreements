require 'test_helper'

class ListLinksControllerTest < ActionController::TestCase
  setup do
    @list_link = list_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_link" do
    assert_difference('ListLink.count') do
      post :create, list_link: { author: @list_link.author, name: @list_link.name, title: @list_link.title }
    end

    assert_redirected_to list_link_path(assigns(:list_link))
  end

  test "should show list_link" do
    get :show, id: @list_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_link
    assert_response :success
  end

  test "should update list_link" do
    patch :update, id: @list_link, list_link: { author: @list_link.author, name: @list_link.name, title: @list_link.title }
    assert_redirected_to list_link_path(assigns(:list_link))
  end

  test "should destroy list_link" do
    assert_difference('ListLink.count', -1) do
      delete :destroy, id: @list_link
    end

    assert_redirected_to list_links_path
  end
end
