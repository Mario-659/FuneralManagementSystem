require "application_system_test_case"

class DeceasedsTest < ApplicationSystemTestCase
  setup do
    @deceased = deceaseds(:one)
  end

  test "visiting the index" do
    visit deceaseds_url
    assert_selector "h1", text: "Deceaseds"
  end

  test "should create deceased" do
    visit deceaseds_url
    click_on "New deceased"

    fill_in "Date of birth", with: @deceased.date_of_birth
    fill_in "Date of death", with: @deceased.date_of_death
    fill_in "Deceased", with: @deceased.deceased_id
    fill_in "First name", with: @deceased.first_name
    fill_in "Last name", with: @deceased.last_name
    fill_in "User", with: @deceased.user_id
    click_on "Create Deceased"

    assert_text "Deceased was successfully created"
    click_on "Back"
  end

  test "should update Deceased" do
    visit deceased_url(@deceased)
    click_on "Edit this deceased", match: :first

    fill_in "Date of birth", with: @deceased.date_of_birth
    fill_in "Date of death", with: @deceased.date_of_death
    fill_in "Deceased", with: @deceased.deceased_id
    fill_in "First name", with: @deceased.first_name
    fill_in "Last name", with: @deceased.last_name
    fill_in "User", with: @deceased.user_id
    click_on "Update Deceased"

    assert_text "Deceased was successfully updated"
    click_on "Back"
  end

  test "should destroy Deceased" do
    visit deceased_url(@deceased)
    click_on "Destroy this deceased", match: :first

    assert_text "Deceased was successfully destroyed"
  end
end
