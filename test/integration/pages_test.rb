require "test_helper"

class PagesTest < ActionDispatch::IntegrationTest

  test "root gelmeli" do
    get root_url
    assert_response :success
  end
  
end
