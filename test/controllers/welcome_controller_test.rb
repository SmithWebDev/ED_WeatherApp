require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get test" do
    get welcome_test_url
    assert_response :success
  end

  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

end
