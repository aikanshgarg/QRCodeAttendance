require 'test_helper'

class ClassdaysControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get classdays_create_url
    assert_response :success
  end

  test "should get destroy" do
    get classdays_destroy_url
    assert_response :success
  end

end
