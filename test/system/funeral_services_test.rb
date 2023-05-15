require "application_system_test_case"

class FuneralServicesTest < ApplicationSystemTestCase
  setup do
    @funeral_service = funeral_services(:one)
  end

  test "visiting the index" do
    visit funeral_services_url
    assert_selector "h1", text: "Funeral services"
  end

  test "should create funeral service" do
    visit funeral_services_url
    click_on "New funeral service"

    fill_in "Description", with: @funeral_service.description
    fill_in "Name", with: @funeral_service.name
    fill_in "Price", with: @funeral_service.price
    fill_in "Service", with: @funeral_service.service_id
    click_on "Create Funeral service"

    assert_text "Funeral service was successfully created"
    click_on "Back"
  end

  test "should update Funeral service" do
    visit funeral_service_url(@funeral_service)
    click_on "Edit this funeral service", match: :first

    fill_in "Description", with: @funeral_service.description
    fill_in "Name", with: @funeral_service.name
    fill_in "Price", with: @funeral_service.price
    fill_in "Service", with: @funeral_service.service_id
    click_on "Update Funeral service"

    assert_text "Funeral service was successfully updated"
    click_on "Back"
  end

  test "should destroy Funeral service" do
    visit funeral_service_url(@funeral_service)
    click_on "Destroy this funeral service", match: :first

    assert_text "Funeral service was successfully destroyed"
  end
end
