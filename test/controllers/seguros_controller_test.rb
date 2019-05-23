require 'test_helper'

class SegurosControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get seguros_detail_url
    assert_response :success
  end

end
