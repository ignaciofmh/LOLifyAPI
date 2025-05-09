require "application_system_test_case"

class RanksTest < ApplicationSystemTestCase
  setup do
    @rank = ranks(:one)
  end

  test "visiting the index" do
    visit ranks_url
    assert_selector "h1", text: "Ranks"
  end

  test "should create rank" do
    visit ranks_url
    click_on "New rank"

    fill_in "Joke", with: @rank.joke_id
    fill_in "Rank", with: @rank.rank
    fill_in "User", with: @rank.user_id
    click_on "Create Rank"

    assert_text "Rank was successfully created"
    click_on "Back"
  end

  test "should update Rank" do
    visit rank_url(@rank)
    click_on "Edit this rank", match: :first

    fill_in "Joke", with: @rank.joke_id
    fill_in "Rank", with: @rank.rank
    fill_in "User", with: @rank.user_id
    click_on "Update Rank"

    assert_text "Rank was successfully updated"
    click_on "Back"
  end

  test "should destroy Rank" do
    visit rank_url(@rank)
    click_on "Destroy this rank", match: :first

    assert_text "Rank was successfully destroyed"
  end
end
