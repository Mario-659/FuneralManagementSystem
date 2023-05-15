require "test_helper"

class DeceasedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deceased = deceaseds(:one)
  end

  test "should get index" do
    get deceaseds_url
    assert_response :success
  end

  test "should get new" do
    get new_deceased_url
    assert_response :success
  end

  test "should create deceased" do
    assert_difference("Deceased.count") do
      post deceaseds_url, params: { deceased: { date_of_birth: @deceased.date_of_birth, date_of_death: @deceased.date_of_death, deceased_id: @deceased.deceased_id, first_name: @deceased.first_name, last_name: @deceased.last_name, user_id: @deceased.user_id } }
    end

    assert_redirected_to deceased_url(Deceased.last)
  end

  test "should show deceased" do
    get deceased_url(@deceased)
    assert_response :success
  end

  test "should get edit" do
    get edit_deceased_url(@deceased)
    assert_response :success
  end

  test "should update deceased" do
    patch deceased_url(@deceased), params: { deceased: { date_of_birth: @deceased.date_of_birth, date_of_death: @deceased.date_of_death, deceased_id: @deceased.deceased_id, first_name: @deceased.first_name, last_name: @deceased.last_name, user_id: @deceased.user_id } }
    assert_redirected_to deceased_url(@deceased)
  end

  test "should destroy deceased" do
    assert_difference("Deceased.count", -1) do
      delete deceased_url(@deceased)
    end

    assert_redirected_to deceaseds_url
  end
end
