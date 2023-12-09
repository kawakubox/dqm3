require "application_system_test_case"

class SkillSetsTest < ApplicationSystemTestCase
  setup do
    @skill_set = skill_sets(:one)
  end

  test "visiting the index" do
    visit skill_sets_url
    assert_selector "h1", text: "Skill sets"
  end

  test "should create skill set" do
    visit skill_sets_url
    click_on "New skill set"

    fill_in "Point", with: @skill_set.point
    fill_in "Skill group", with: @skill_set.skill_group_id
    fill_in "Skill", with: @skill_set.skill_id
    click_on "Create Skill set"

    assert_text "Skill set was successfully created"
    click_on "Back"
  end

  test "should update Skill set" do
    visit skill_set_url(@skill_set)
    click_on "Edit this skill set", match: :first

    fill_in "Point", with: @skill_set.point
    fill_in "Skill group", with: @skill_set.skill_group_id
    fill_in "Skill", with: @skill_set.skill_id
    click_on "Update Skill set"

    assert_text "Skill set was successfully updated"
    click_on "Back"
  end

  test "should destroy Skill set" do
    visit skill_set_url(@skill_set)
    click_on "Destroy this skill set", match: :first

    assert_text "Skill set was successfully destroyed"
  end
end
