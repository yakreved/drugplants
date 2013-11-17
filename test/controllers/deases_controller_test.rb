require 'test_helper'

class DeasesControllerTest < ActionController::TestCase
  setup do
    @dease = deases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dease" do
    assert_difference('Dease.count') do
      post :create, dease: { discription: @dease.discription, name: @dease.name }
    end

    assert_redirected_to dease_path(assigns(:dease))
  end

  test "should show dease" do
    get :show, id: @dease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dease
    assert_response :success
  end

  test "should update dease" do
    patch :update, id: @dease, dease: { discription: @dease.discription, name: @dease.name }
    assert_redirected_to dease_path(assigns(:dease))
  end

  test "should destroy dease" do
    assert_difference('Dease.count', -1) do
      delete :destroy, id: @dease
    end

    assert_redirected_to deases_path
  end
end
