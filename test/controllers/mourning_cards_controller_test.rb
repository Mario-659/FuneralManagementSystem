require "test_helper"

class MourningCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mourning_card = mourning_cards(:one)
  end

  test "should get index" do
    get mourning_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_mourning_card_url
    assert_response :success
  end

  test "should create mourning_card" do
    assert_difference("MourningCard.count") do
      post mourning_cards_url, params: { mourning_card: { card_id: @mourning_card.card_id, funeral_id: @mourning_card.funeral_id } }
    end

    assert_redirected_to mourning_card_url(MourningCard.last)
  end

  test "should show mourning_card" do
    get mourning_card_url(@mourning_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_mourning_card_url(@mourning_card)
    assert_response :success
  end

  test "should update mourning_card" do
    patch mourning_card_url(@mourning_card), params: { mourning_card: { card_id: @mourning_card.card_id, funeral_id: @mourning_card.funeral_id } }
    assert_redirected_to mourning_card_url(@mourning_card)
  end

  test "should destroy mourning_card" do
    assert_difference("MourningCard.count", -1) do
      delete mourning_card_url(@mourning_card)
    end

    assert_redirected_to mourning_cards_url
  end
end
