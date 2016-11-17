require 'test_helper'

class CaughtsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get caughts_index_url
    assert_response :success
  end

end
