require 'test_helper'

class ContraindicationsControllerTest < ActionController::TestCase
  setup do
    @contraindication = contraindications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contraindications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contraindication" do
    assert_difference('Contraindication.count') do
      post :create, contraindication: { name: @contraindication.name }
    end

    assert_redirected_to contraindication_path(assigns(:contraindication))
  end

  test "should show contraindication" do
    get :show, id: @contraindication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contraindication
    assert_response :success
  end

  test "should update contraindication" do
    patch :update, id: @contraindication, contraindication: { name: @contraindication.name }
    assert_redirected_to contraindication_path(assigns(:contraindication))
  end

  test "should destroy contraindication" do
    assert_difference('Contraindication.count', -1) do
      delete :destroy, id: @contraindication
    end

    assert_redirected_to contraindications_path
  end
end
