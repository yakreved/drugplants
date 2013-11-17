require 'test_helper'

class PathOfPlantsControllerTest < ActionController::TestCase
  setup do
    @path_of_plant = path_of_plants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:path_of_plants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create path_of_plant" do
    assert_difference('PathOfPlant.count') do
      post :create, path_of_plant: { Name: @path_of_plant.Name }
    end

    assert_redirected_to path_of_plant_path(assigns(:path_of_plant))
  end

  test "should show path_of_plant" do
    get :show, id: @path_of_plant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @path_of_plant
    assert_response :success
  end

  test "should update path_of_plant" do
    patch :update, id: @path_of_plant, path_of_plant: { Name: @path_of_plant.Name }
    assert_redirected_to path_of_plant_path(assigns(:path_of_plant))
  end

  test "should destroy path_of_plant" do
    assert_difference('PathOfPlant.count', -1) do
      delete :destroy, id: @path_of_plant
    end

    assert_redirected_to path_of_plants_path
  end
end
