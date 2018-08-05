require 'test_helper'

class BatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get batches_home_url
    assert_response :success
  end

  test "should get create" do
    get batches_create_url
    assert_response :success
  end

  test "should get destroy" do
    get batches_destroy_url
    assert_response :success
  end

end
