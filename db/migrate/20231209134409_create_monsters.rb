class CreateMonsters < ActiveRecord::Migration[7.1]
  def change
    create_table :monsters do |t|
      t.string :name, limit: 10, null: false
      t.string :lineage, limit: 20, null: false
      t.string :rank, limit: 1, null: false

      t.timestamps
    end
  end
end
