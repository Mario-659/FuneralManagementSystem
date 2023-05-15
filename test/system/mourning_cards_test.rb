require "application_system_test_case"

class MourningCardsTest < ApplicationSystemTestCase
  setup do
    @mourning_card = mourning_cards(:one)
  end

  test "visiting the index" do
    visit mourning_cards_url
    assert_selector "h1", text: "Mourning cards"
  end

  test "should create mourning card" do
    visit mourning_cards_url
    click_on "New mourning card"

    fill_in "Card", with: @mourning_card.card_id
    fill_in "Funeral", with: @mourning_card.funeral_id
    click_on "Create Mourning card"

    assert_text "Mourning card was successfully created"
    click_on "Back"
  end

  test "should update Mourning card" do
    visit mourning_card_url(@mourning_card)
    click_on "Edit this mourning card", match: :first

    fill_in "Card", with: @mourning_card.card_id
    fill_in "Funeral", with: @mourning_card.funeral_id
    click_on "Update Mourning card"

    assert_text "Mourning card was successfully updated"
    click_on "Back"
  end

  test "should destroy Mourning card" do
    visit mourning_card_url(@mourning_card)
    click_on "Destroy this mourning card", match: :first

    assert_text "Mourning card was successfully destroyed"
  end
end
