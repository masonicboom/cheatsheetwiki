require 'test_helper'

class CheatsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cheats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cheat" do
    assert_difference('Cheat.count') do
      post :create, :cheat => { }
    end

    assert_redirected_to cheat_path(assigns(:cheat))
  end

  test "should show cheat" do
    get :show, :id => cheats(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cheats(:one).to_param
    assert_response :success
  end

  test "should update cheat" do
    put :update, :id => cheats(:one).to_param, :cheat => { }
    assert_redirected_to cheat_path(assigns(:cheat))
  end

  test "should destroy cheat" do
    assert_difference('Cheat.count', -1) do
      delete :destroy, :id => cheats(:one).to_param
    end

    assert_redirected_to cheats_path
  end
end
