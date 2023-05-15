require "test_helper"

class FuneralServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funeral_service = funeral_services(:one)
  end

  test "should get index" do
    get funeral_services_url
    assert_response :success
  end

  test "should get new" do
    get new_funeral_service_url
    assert_response :success
  end

  test "should create funeral_service" do
    assert_difference("FuneralService.count") do
      post funeral_services_url, params: { funeral_service: { description: @funeral_service.description, name: @funeral_service.name, price: @funeral_service.price, service_id: @funeral_service.service_id } }
    end

    assert_redirected_to funeral_service_url(FuneralService.last)
  end

  test "should show funeral_service" do
    get funeral_service_url(@funeral_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_funeral_service_url(@funeral_service)
    assert_response :success
  end

  test "should update funeral_service" do
    patch funeral_service_url(@funeral_service), params: { funeral_service: { description: @funeral_service.description, name: @funeral_service.name, price: @funeral_service.price, service_id: @funeral_service.service_id } }
    assert_redirected_to funeral_service_url(@funeral_service)
  end

  test "should destroy funeral_service" do
    assert_difference("FuneralService.count", -1) do
      delete funeral_service_url(@funeral_service)
    end

    assert_redirected_to funeral_services_url
  end
end
