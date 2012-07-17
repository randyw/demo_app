require 'test_helper'

class NewMicropostsControllerTest < ActionController::TestCase
  setup do
    @new_micropost = new_microposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_microposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_micropost" do
    assert_difference('NewMicropost.count') do
      post :create, new_micropost: { content: @new_micropost.content, user_id: @new_micropost.user_id }
    end

    assert_redirected_to new_micropost_path(assigns(:new_micropost))
  end

  test "should show new_micropost" do
    get :show, id: @new_micropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_micropost
    assert_response :success
  end

  test "should update new_micropost" do
    put :update, id: @new_micropost, new_micropost: { content: @new_micropost.content, user_id: @new_micropost.user_id }
    assert_redirected_to new_micropost_path(assigns(:new_micropost))
  end

  test "should destroy new_micropost" do
    assert_difference('NewMicropost.count', -1) do
      delete :destroy, id: @new_micropost
    end

    assert_redirected_to new_microposts_path
  end
end
