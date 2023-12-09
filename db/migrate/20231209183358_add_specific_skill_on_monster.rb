class AddSpecificSkillOnMonster < ActiveRecord::Migration[7.1]
  def change
    add_reference :monsters, :specific_skill, foreign_key: { to_table: :skill_groups }
  end
end
