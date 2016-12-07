require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_session_url #=> "https://localhost:3000/session/new"
    assert_response :success
  end

end
