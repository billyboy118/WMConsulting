require "test_helper"

class CodeResourceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get code_resource_index_url
    assert_response :success
  end
end
