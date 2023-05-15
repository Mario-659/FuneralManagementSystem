require "application_system_test_case"

class FuneralServiceOrdersTest < ApplicationSystemTestCase
  setup do
    @funeral_service_order = funeral_service_orders(:one)
  end

  test "visiting the index" do
    visit funeral_service_orders_url
    assert_selector "h1", text: "Funeral service orders"
  end

  test "should create funeral service order" do
    visit funeral_service_orders_url
    click_on "New funeral service order"

    fill_in "Funeral", with: @funeral_service_order.funeral_id
    fill_in "Order", with: @funeral_service_order.order_id
    fill_in "Quantity", with: @funeral_service_order.quantity
    fill_in "Service", with: @funeral_service_order.service_id
    click_on "Create Funeral service order"

    assert_text "Funeral service order was successfully created"
    click_on "Back"
  end

  test "should update Funeral service order" do
    visit funeral_service_order_url(@funeral_service_order)
    click_on "Edit this funeral service order", match: :first

    fill_in "Funeral", with: @funeral_service_order.funeral_id
    fill_in "Order", with: @funeral_service_order.order_id
    fill_in "Quantity", with: @funeral_service_order.quantity
    fill_in "Service", with: @funeral_service_order.service_id
    click_on "Update Funeral service order"

    assert_text "Funeral service order was successfully updated"
    click_on "Back"
  end

  test "should destroy Funeral service order" do
    visit funeral_service_order_url(@funeral_service_order)
    click_on "Destroy this funeral service order", match: :first

    assert_text "Funeral service order was successfully destroyed"
  end
end
