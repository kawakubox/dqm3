class CreateSkillSets < ActiveRecord::Migration[7.1]
  def change
    create_table :skill_sets do |t|
      t.references :skill_group, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.integer :point, null: false

      t.timestamps
    end
  end
end
