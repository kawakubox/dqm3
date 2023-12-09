require "application_system_test_case"

class MonsterGrowthsTest < ApplicationSystemTestCase
  setup do
    @monster_growth = monster_growths(:one)
  end

  test "visiting the index" do
    visit monster_growths_url
    assert_selector "h1", text: "Monster growths"
  end

  test "should create monster growth" do
    visit monster_growths_url
    click_on "New monster growth"

    fill_in "Attack", with: @monster_growth.attack
    fill_in "Defence", with: @monster_growth.defence
    fill_in "Hp", with: @monster_growth.hp
    fill_in "Intelligence", with: @monster_growth.intelligence
    fill_in "Level", with: @monster_growth.level
    fill_in "Monster", with: @monster_growth.monster_id
    fill_in "Mp", with: @monster_growth.mp
    fill_in "Speed", with: @monster_growth.speed
    click_on "Create Monster growth"

    assert_text "Monster growth was successfully created"
    click_on "Back"
  end

  test "should update Monster growth" do
    visit monster_growth_url(@monster_growth)
    click_on "Edit this monster growth", match: :first

    fill_in "Attack", with: @monster_growth.attack
    fill_in "Defence", with: @monster_growth.defence
    fill_in "Hp", with: @monster_growth.hp
    fill_in "Intelligence", with: @monster_growth.intelligence
    fill_in "Level", with: @monster_growth.level
    fill_in "Monster", with: @monster_growth.monster_id
    fill_in "Mp", with: @monster_growth.mp
    fill_in "Speed", with: @monster_growth.speed
    click_on "Update Monster growth"

    assert_text "Monster growth was successfully updated"
    click_on "Back"
  end

  test "should destroy Monster growth" do
    visit monster_growth_url(@monster_growth)
    click_on "Destroy this monster growth", match: :first

    assert_text "Monster growth was successfully destroyed"
  end
end
