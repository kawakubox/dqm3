require "application_system_test_case"

class LevelUpPatternsTest < ApplicationSystemTestCase
  setup do
    @level_up_pattern = level_up_patterns(:one)
  end

  test "visiting the index" do
    visit level_up_patterns_url
    assert_selector "h1", text: "Level up patterns"
  end

  test "should create level up pattern" do
    visit level_up_patterns_url
    click_on "New level up pattern"

    fill_in "Lineage", with: @level_up_pattern.lineage
    fill_in "Name", with: @level_up_pattern.name
    click_on "Create Level up pattern"

    assert_text "Level up pattern was successfully created"
    click_on "Back"
  end

  test "should update Level up pattern" do
    visit level_up_pattern_url(@level_up_pattern)
    click_on "Edit this level up pattern", match: :first

    fill_in "Lineage", with: @level_up_pattern.lineage
    fill_in "Name", with: @level_up_pattern.name
    click_on "Update Level up pattern"

    assert_text "Level up pattern was successfully updated"
    click_on "Back"
  end

  test "should destroy Level up pattern" do
    visit level_up_pattern_url(@level_up_pattern)
    click_on "Destroy this level up pattern", match: :first

    assert_text "Level up pattern was successfully destroyed"
  end
end
