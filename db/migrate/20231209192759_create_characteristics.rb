class CreateCharacteristics < ActiveRecord::Migration[7.1]
  def change
    create_table :characteristics do |t|
      t.string :name, null: false, limit: 20
      t.text :description

      t.timestamps
    end
  end
end
