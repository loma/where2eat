require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should create new place" do
    get :new
    assert_response :success
    assert_not_nil assigns(:place)
  end

  test "should show place by id" do
    get(:show, {'id' => 1})
    assert_response :success
    assert_not_nil assigns(:place)
  end

  test "create place" do
    assert_difference('Place.count') do
      post :create, place: {
        name: 'Opposite Food Court',
        location: '150 Cantonment Rd.'
      }
    end
    assert_redirected_to place_path(assigns(:place))
  end
end
