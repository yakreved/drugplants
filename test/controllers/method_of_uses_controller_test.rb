require 'test_helper'

class MethodOfUsesControllerTest < ActionController::TestCase
  setup do
    @method_of_use = method_of_uses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method_of_uses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method_of_use" do
    assert_difference('MethodOfUse.count') do
      post :create, method_of_use: { description: @method_of_use.description, name: @method_of_use.name, path_of_plant_id: @method_of_use.path_of_plant_id, plant_id: @method_of_use.plant_id }
    end

    assert_redirected_to method_of_use_path(assigns(:method_of_use))
  end

  test "should show method_of_use" do
    get :show, id: @method_of_use
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @method_of_use
    assert_response :success
  end

  test "should update method_of_use" do
    patch :update, id: @method_of_use, method_of_use: { description: @method_of_use.description, name: @method_of_use.name, path_of_plant_id: @method_of_use.path_of_plant_id, plant_id: @method_of_use.plant_id }
    assert_redirected_to method_of_use_path(assigns(:method_of_use))
  end

  test "should destroy method_of_use" do
    assert_difference('MethodOfUse.count', -1) do
      delete :destroy, id: @method_of_use
    end

    assert_redirected_to method_of_uses_path
  end
end
