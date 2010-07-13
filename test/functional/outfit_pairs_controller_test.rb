require 'test_helper'

class OutfitPairsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outfit_pairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outfit_pair" do
    assert_difference('OutfitPair.count') do
      post :create, :outfit_pair => { }
    end

    assert_redirected_to outfit_pair_path(assigns(:outfit_pair))
  end

  test "should show outfit_pair" do
    get :show, :id => outfit_pairs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => outfit_pairs(:one).to_param
    assert_response :success
  end

  test "should update outfit_pair" do
    put :update, :id => outfit_pairs(:one).to_param, :outfit_pair => { }
    assert_redirected_to outfit_pair_path(assigns(:outfit_pair))
  end

  test "should destroy outfit_pair" do
    assert_difference('OutfitPair.count', -1) do
      delete :destroy, :id => outfit_pairs(:one).to_param
    end

    assert_redirected_to outfit_pairs_path
  end
end
