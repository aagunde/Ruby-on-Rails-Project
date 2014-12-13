require 'test_helper'

class FounditemsControllerTest < ActionController::TestCase
  setup do
    @founditem = founditems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:founditems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create founditem" do
    assert_difference('Founditem.count') do
      post :create, founditem: { brand: @founditem.brand, color: @founditem.color, name: @founditem.name, place_where_found: @founditem.place_where_found }
    end

    assert_redirected_to founditem_path(assigns(:founditem))
  end

  test "should show founditem" do
    get :show, id: @founditem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @founditem
    assert_response :success
  end

  test "should update founditem" do
    patch :update, id: @founditem, founditem: { brand: @founditem.brand, color: @founditem.color, name: @founditem.name, place_where_found: @founditem.place_where_found }
    assert_redirected_to founditem_path(assigns(:founditem))
  end

  test "should destroy founditem" do
    assert_difference('Founditem.count', -1) do
      delete :destroy, id: @founditem
    end

    assert_redirected_to founditems_path
  end
end
