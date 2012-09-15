require 'test_helper'

class CommentvotesControllerTest < ActionController::TestCase
  setup do
    @commentvote = commentvotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commentvotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commentvote" do
    assert_difference('Commentvote.count') do
      post :create, commentvote: @commentvote.attributes
    end

    assert_redirected_to commentvote_path(assigns(:commentvote))
  end

  test "should show commentvote" do
    get :show, id: @commentvote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commentvote
    assert_response :success
  end

  test "should update commentvote" do
    put :update, id: @commentvote, commentvote: @commentvote.attributes
    assert_redirected_to commentvote_path(assigns(:commentvote))
  end

  test "should destroy commentvote" do
    assert_difference('Commentvote.count', -1) do
      delete :destroy, id: @commentvote
    end

    assert_redirected_to commentvotes_path
  end
end
