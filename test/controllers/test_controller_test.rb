require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get page1" do
    get test_page1_url
    assert_response :success
  end

end
