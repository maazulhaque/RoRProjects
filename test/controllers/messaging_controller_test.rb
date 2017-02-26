require 'test_helper'

class MessagingControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get messaging_homepage_url
    assert_response :success
  end

end
