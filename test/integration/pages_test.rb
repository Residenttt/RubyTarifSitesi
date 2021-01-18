require "test_helper"

class PagesTest < ActionDispatch::IntegrationTest

  test "index gelmeli" do
    get pages_index_url
    assert_response :success
  end

  test "root gelmeli" do
    get root_url
    assert_response :success
  end
  
end
