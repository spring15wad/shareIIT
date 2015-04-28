require 'test_helper'

class ReplypostsControllerTest < ActionController::TestCase
  setup do
    @replypost = replyposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:replyposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create replypost" do
    assert_difference('Replypost.count') do
      post :create, replypost: { content: @replypost.content, replyuid: @replypost.replyuid }
    end

    assert_redirected_to replypost_path(assigns(:replypost))
  end

  test "should show replypost" do
    get :show, id: @replypost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @replypost
    assert_response :success
  end

  test "should update replypost" do
    patch :update, id: @replypost, replypost: { content: @replypost.content, replyuid: @replypost.replyuid }
    assert_redirected_to replypost_path(assigns(:replypost))
  end

  test "should destroy replypost" do
    assert_difference('Replypost.count', -1) do
      delete :destroy, id: @replypost
    end

    assert_redirected_to replyposts_path
  end
end
