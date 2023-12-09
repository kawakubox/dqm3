class CreateMonsterGrowths < ActiveRecord::Migration[7.1]
  def change
    create_table :monster_growths do |t|
      t.references :monster, null: false, foreign_key: true
      t.integer :level, null: false
      t.integer :hp, null: false
      t.integer :mp, null: false
      t.integer :attack, null: false
      t.integer :defence, null: false
      t.integer :speed, null: false
      t.integer :intelligence, null: false

      t.timestamps
    end
  end
end
