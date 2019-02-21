require 'test_helper'

class Api::V1::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_bookings_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_bookings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_bookings_destroy_url
    assert_response :success
  end

end
