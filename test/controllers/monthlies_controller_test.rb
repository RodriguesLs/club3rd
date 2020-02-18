require 'test_helper'

class MonthliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monthly = monthlies(:one)
  end

  test "should get index" do
    get monthlies_url
    assert_response :success
  end

  test "should get new" do
    get new_monthly_url
    assert_response :success
  end

  test "should create monthly" do
    assert_difference('Monthly.count') do
      post monthlies_url, params: { monthly: { customer_id: @monthly.customer_id, date: @monthly.date, price: @monthly.price, status: @monthly.status } }
    end

    assert_redirected_to monthly_url(Monthly.last)
  end

  test "should show monthly" do
    get monthly_url(@monthly)
    assert_response :success
  end

  test "should get edit" do
    get edit_monthly_url(@monthly)
    assert_response :success
  end

  test "should update monthly" do
    patch monthly_url(@monthly), params: { monthly: { customer_id: @monthly.customer_id, date: @monthly.date, price: @monthly.price, status: @monthly.status } }
    assert_redirected_to monthly_url(@monthly)
  end

  test "should destroy monthly" do
    assert_difference('Monthly.count', -1) do
      delete monthly_url(@monthly)
    end

    assert_redirected_to monthlies_url
  end
end
