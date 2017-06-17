require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get About" do
    get pages_About_url
    assert_response :success
  end

  test "should get Contact" do
    get pages_Contact_url
    assert_response :success
  end

  test "should get Projects" do
    get pages_Projects_url
    assert_response :success
  end

end
