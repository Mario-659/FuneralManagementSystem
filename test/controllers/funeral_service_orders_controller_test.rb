require "test_helper"

class FuneralServiceOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funeral_service_order = funeral_service_orders(:one)
  end

  test "should get index" do
    get funeral_service_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_funeral_service_order_url
    assert_response :success
  end

  test "should create funeral_service_order" do
    assert_difference("FuneralServiceOrder.count") do
      post funeral_service_orders_url, params: { funeral_service_order: { funeral_id: @funeral_service_order.funeral_id, order_id: @funeral_service_order.order_id, quantity: @funeral_service_order.quantity, service_id: @funeral_service_order.service_id } }
    end

    assert_redirected_to funeral_service_order_url(FuneralServiceOrder.last)
  end

  test "should show funeral_service_order" do
    get funeral_service_order_url(@funeral_service_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_funeral_service_order_url(@funeral_service_order)
    assert_response :success
  end

  test "should update funeral_service_order" do
    patch funeral_service_order_url(@funeral_service_order), params: { funeral_service_order: { funeral_id: @funeral_service_order.funeral_id, order_id: @funeral_service_order.order_id, quantity: @funeral_service_order.quantity, service_id: @funeral_service_order.service_id } }
    assert_redirected_to funeral_service_order_url(@funeral_service_order)
  end

  test "should destroy funeral_service_order" do
    assert_difference("FuneralServiceOrder.count", -1) do
      delete funeral_service_order_url(@funeral_service_order)
    end

    assert_redirected_to funeral_service_orders_url
  end
end
