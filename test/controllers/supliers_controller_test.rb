require 'test_helper'

class SupliersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supliers_index_url
    assert_response :success
  end

  test "should get new" do
    get supliers_new_url
    assert_response :success
  end

end
