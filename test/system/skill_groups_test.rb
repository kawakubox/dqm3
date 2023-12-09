require "application_system_test_case"

class SkillGroupsTest < ApplicationSystemTestCase
  setup do
    @skill_group = skill_groups(:one)
  end

  test "visiting the index" do
    visit skill_groups_url
    assert_selector "h1", text: "Skill groups"
  end

  test "should create skill group" do
    visit skill_groups_url
    click_on "New skill group"

    fill_in "Name", with: @skill_group.name
    click_on "Create Skill group"

    assert_text "Skill group was successfully created"
    click_on "Back"
  end

  test "should update Skill group" do
    visit skill_group_url(@skill_group)
    click_on "Edit this skill group", match: :first

    fill_in "Name", with: @skill_group.name
    click_on "Update Skill group"

    assert_text "Skill group was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill group" do
    visit skill_group_url(@skill_group)
    click_on "Destroy this skill group", match: :first

    assert_text "Skill group was successfully destroyed"
  end
end
