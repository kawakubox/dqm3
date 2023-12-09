class CreateLevelUpPatterns < ActiveRecord::Migration[7.1]
  def change
    create_table :level_up_patterns do |t|
      t.string :lineage
      t.string :name

      t.timestamps
    end
  end
end
