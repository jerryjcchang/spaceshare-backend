require 'test_helper'

class AuthControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get auth_controller_create_url
    assert_response :success
  end

end
