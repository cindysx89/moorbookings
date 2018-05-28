require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get bookings_users_url
    assert_response :success
  end

  test "should get moorings" do
    get bookings_moorings_url
    assert_response :success
  end

end
