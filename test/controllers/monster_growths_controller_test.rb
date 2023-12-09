require "test_helper"

class MonsterGrowthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monster_growth = monster_growths(:one)
  end

  test "should get index" do
    get monster_growths_url
    assert_response :success
  end

  test "should get new" do
    get new_monster_growth_url
    assert_response :success
  end

  test "should create monster_growth" do
    assert_difference("MonsterGrowth.count") do
      post monster_growths_url, params: { monster_growth: { attack: @monster_growth.attack, defence: @monster_growth.defence, hp: @monster_growth.hp, intelligence: @monster_growth.intelligence, level: @monster_growth.level, monster_id: @monster_growth.monster_id, mp: @monster_growth.mp, speed: @monster_growth.speed } }
    end

    assert_redirected_to monster_growth_url(MonsterGrowth.last)
  end

  test "should show monster_growth" do
    get monster_growth_url(@monster_growth)
    assert_response :success
  end

  test "should get edit" do
    get edit_monster_growth_url(@monster_growth)
    assert_response :success
  end

  test "should update monster_growth" do
    patch monster_growth_url(@monster_growth), params: { monster_growth: { attack: @monster_growth.attack, defence: @monster_growth.defence, hp: @monster_growth.hp, intelligence: @monster_growth.intelligence, level: @monster_growth.level, monster_id: @monster_growth.monster_id, mp: @monster_growth.mp, speed: @monster_growth.speed } }
    assert_redirected_to monster_growth_url(@monster_growth)
  end

  test "should destroy monster_growth" do
    assert_difference("MonsterGrowth.count", -1) do
      delete monster_growth_url(@monster_growth)
    end

    assert_redirected_to monster_growths_url
  end
end
