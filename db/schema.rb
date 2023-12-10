# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_10_084715) do
  create_table "characteristics", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level_up_patterns", force: :cascade do |t|
    t.string "lineage"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monster_growths", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "level", null: false
    t.integer "hp", null: false
    t.integer "mp", null: false
    t.integer "attack", null: false
    t.integer "defence", null: false
    t.integer "speed", null: false
    t.integer "intelligence", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_monster_growths_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name", limit: 10, null: false
    t.string "lineage", limit: 20, null: false
    t.string "rank", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "specific_skill_id"
    t.integer "level_up_pattern_id"
    t.index ["level_up_pattern_id"], name: "index_monsters_on_level_up_pattern_id"
    t.index ["specific_skill_id"], name: "index_monsters_on_specific_skill_id"
  end

  create_table "skill_groups", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_sets", force: :cascade do |t|
    t.integer "skill_group_id", null: false
    t.integer "skill_id", null: false
    t.integer "point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_group_id"], name: "index_skill_sets_on_skill_group_id"
    t.index ["skill_id"], name: "index_skill_sets_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", limit: 20, null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "monster_growths", "monsters"
  add_foreign_key "monsters", "level_up_patterns"
  add_foreign_key "monsters", "skill_groups", column: "specific_skill_id"
  add_foreign_key "skill_sets", "skill_groups"
  add_foreign_key "skill_sets", "skills"
end
