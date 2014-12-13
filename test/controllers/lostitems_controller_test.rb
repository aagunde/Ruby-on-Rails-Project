require 'test_helper'

class LostitemsControllerTest < ActionController::TestCase
  setup do
    @lostitem = lostitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lostitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lostitem" do
    assert_difference('Lostitem.count') do
      post :create, lostitem: { brand: @lostitem.brand, color: @lostitem.color, name: @lostitem.name, place_where_lost: @lostitem.place_where_lost }
    end

    assert_redirected_to lostitem_path(assigns(:lostitem))
  end

  test "should show lostitem" do
    get :show, id: @lostitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lostitem
    assert_response :success
  end

  test "should update lostitem" do
    patch :update, id: @lostitem, lostitem: { brand: @lostitem.brand, color: @lostitem.color, name: @lostitem.name, place_where_lost: @lostitem.place_where_lost }
    assert_redirected_to lostitem_path(assigns(:lostitem))
  end

  test "should destroy lostitem" do
    assert_difference('Lostitem.count', -1) do
      delete :destroy, id: @lostitem
    end

    assert_redirected_to lostitems_path
  end
end
