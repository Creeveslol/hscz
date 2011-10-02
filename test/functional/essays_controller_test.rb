require 'test_helper'

class EssaysControllerTest < ActionController::TestCase
  setup do
    @essay = essays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:essays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create essay" do
    assert_difference('Essay.count') do
      post :create, essay: @essay.attributes
    end

    assert_redirected_to essay_path(assigns(:essay))
  end

  test "should show essay" do
    get :show, id: @essay.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @essay.to_param
    assert_response :success
  end

  test "should update essay" do
    put :update, id: @essay.to_param, essay: @essay.attributes
    assert_redirected_to essay_path(assigns(:essay))
  end

  test "should destroy essay" do
    assert_difference('Essay.count', -1) do
      delete :destroy, id: @essay.to_param
    end

    assert_redirected_to essays_path
  end
end
