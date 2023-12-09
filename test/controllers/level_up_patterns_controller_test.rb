require "test_helper"

class LevelUpPatternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @level_up_pattern = level_up_patterns(:one)
  end

  test "should get index" do
    get level_up_patterns_url
    assert_response :success
  end

  test "should get new" do
    get new_level_up_pattern_url
    assert_response :success
  end

  test "should create level_up_pattern" do
    assert_difference("LevelUpPattern.count") do
      post level_up_patterns_url, params: { level_up_pattern: { lineage: @level_up_pattern.lineage, name: @level_up_pattern.name } }
    end

    assert_redirected_to level_up_pattern_url(LevelUpPattern.last)
  end

  test "should show level_up_pattern" do
    get level_up_pattern_url(@level_up_pattern)
    assert_response :success
  end

  test "should get edit" do
    get edit_level_up_pattern_url(@level_up_pattern)
    assert_response :success
  end

  test "should update level_up_pattern" do
    patch level_up_pattern_url(@level_up_pattern), params: { level_up_pattern: { lineage: @level_up_pattern.lineage, name: @level_up_pattern.name } }
    assert_redirected_to level_up_pattern_url(@level_up_pattern)
  end

  test "should destroy level_up_pattern" do
    assert_difference("LevelUpPattern.count", -1) do
      delete level_up_pattern_url(@level_up_pattern)
    end

    assert_redirected_to level_up_patterns_url
  end
end
