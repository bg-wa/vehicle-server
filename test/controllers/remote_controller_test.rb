require 'test_helper'

class RemoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get remote_index_url
    assert_response :success
  end

end
