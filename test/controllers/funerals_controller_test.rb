require "test_helper"

class FuneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funeral = funerals(:one)
  end

  test "should get index" do
    get funerals_url
    assert_response :success
  end

  test "should get new" do
    get new_funeral_url
    assert_response :success
  end

  test "should create funeral" do
    assert_difference("Funeral.count") do
      post funerals_url, params: { funeral: { burial_place: @funeral.burial_place, burial_type: @funeral.burial_type, deceased_id: @funeral.deceased_id, funeral_date: @funeral.funeral_date, funeral_id: @funeral.funeral_id, reception_location: @funeral.reception_location } }
    end

    assert_redirected_to funeral_url(Funeral.last)
  end

  test "should show funeral" do
    get funeral_url(@funeral)
    assert_response :success
  end

  test "should get edit" do
    get edit_funeral_url(@funeral)
    assert_response :success
  end

  test "should update funeral" do
    patch funeral_url(@funeral), params: { funeral: { burial_place: @funeral.burial_place, burial_type: @funeral.burial_type, deceased_id: @funeral.deceased_id, funeral_date: @funeral.funeral_date, funeral_id: @funeral.funeral_id, reception_location: @funeral.reception_location } }
    assert_redirected_to funeral_url(@funeral)
  end

  test "should destroy funeral" do
    assert_difference("Funeral.count", -1) do
      delete funeral_url(@funeral)
    end

    assert_redirected_to funerals_url
  end
end
