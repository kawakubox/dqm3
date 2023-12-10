class AddLevelUpPatternOnMonster < ActiveRecord::Migration[7.1]
  def change
    add_reference :monsters, :level_up_pattern, foreign_key: { to_table: :level_up_patterns }
  end
end
