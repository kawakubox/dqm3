class CreateSkillGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :skill_groups do |t|
      t.string :name, null: false, limit: 20

      t.timestamps
    end
  end
end
