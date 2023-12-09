require "test_helper"

class SkillGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skill_group = skill_groups(:one)
  end

  test "should get index" do
    get skill_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_skill_group_url
    assert_response :success
  end

  test "should create skill_group" do
    assert_difference("SkillGroup.count") do
      post skill_groups_url, params: { skill_group: { name: @skill_group.name } }
    end

    assert_redirected_to skill_group_url(SkillGroup.last)
  end

  test "should show skill_group" do
    get skill_group_url(@skill_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_skill_group_url(@skill_group)
    assert_response :success
  end

  test "should update skill_group" do
    patch skill_group_url(@skill_group), params: { skill_group: { name: @skill_group.name } }
    assert_redirected_to skill_group_url(@skill_group)
  end

  test "should destroy skill_group" do
    assert_difference("SkillGroup.count", -1) do
      delete skill_group_url(@skill_group)
    end

    assert_redirected_to skill_groups_url
  end
end
