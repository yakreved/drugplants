require 'test_helper'

class MethodOfUseDiseasesControllerTest < ActionController::TestCase
  setup do
    @method_of_use_disease = method_of_use_diseases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:method_of_use_diseases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create method_of_use_disease" do
    assert_difference('MethodOfUseDisease.count') do
      post :create, method_of_use_disease: { disease_id: @method_of_use_disease.disease_id, method_of_use_id: @method_of_use_disease.method_of_use_id }
    end

    assert_redirected_to method_of_use_disease_path(assigns(:method_of_use_disease))
  end

  test "should show method_of_use_disease" do
    get :show, id: @method_of_use_disease
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @method_of_use_disease
    assert_response :success
  end

  test "should update method_of_use_disease" do
    patch :update, id: @method_of_use_disease, method_of_use_disease: { disease_id: @method_of_use_disease.disease_id, method_of_use_id: @method_of_use_disease.method_of_use_id }
    assert_redirected_to method_of_use_disease_path(assigns(:method_of_use_disease))
  end

  test "should destroy method_of_use_disease" do
    assert_difference('MethodOfUseDisease.count', -1) do
      delete :destroy, id: @method_of_use_disease
    end

    assert_redirected_to method_of_use_diseases_path
  end
end
