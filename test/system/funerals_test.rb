require "application_system_test_case"

class FuneralsTest < ApplicationSystemTestCase
  setup do
    @funeral = funerals(:one)
  end

  test "visiting the index" do
    visit funerals_url
    assert_selector "h1", text: "Funerals"
  end

  test "should create funeral" do
    visit funerals_url
    click_on "New funeral"

    fill_in "Burial place", with: @funeral.burial_place
    fill_in "Burial type", with: @funeral.burial_type
    fill_in "Deceased", with: @funeral.deceased_id
    fill_in "Funeral date", with: @funeral.funeral_date
    fill_in "Funeral", with: @funeral.funeral_id
    fill_in "Reception location", with: @funeral.reception_location
    click_on "Create Funeral"

    assert_text "Funeral was successfully created"
    click_on "Back"
  end

  test "should update Funeral" do
    visit funeral_url(@funeral)
    click_on "Edit this funeral", match: :first

    fill_in "Burial place", with: @funeral.burial_place
    fill_in "Burial type", with: @funeral.burial_type
    fill_in "Deceased", with: @funeral.deceased_id
    fill_in "Funeral date", with: @funeral.funeral_date
    fill_in "Funeral", with: @funeral.funeral_id
    fill_in "Reception location", with: @funeral.reception_location
    click_on "Update Funeral"

    assert_text "Funeral was successfully updated"
    click_on "Back"
  end

  test "should destroy Funeral" do
    visit funeral_url(@funeral)
    click_on "Destroy this funeral", match: :first

    assert_text "Funeral was successfully destroyed"
  end
end
