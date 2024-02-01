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

ActiveRecord::Schema[7.0].define(version: 2024_01_18_090117) do
  create_table "clearrecords", force: :cascade do |t|
    t.integer "stage_id"
    t.integer "weapon_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hazard_level", default: 0
    t.index ["user_id", "stage_id", "weapon_id"], name: "index_clearrecords_on_user_id_and_stage_id_and_weapon_id"
    t.index ["user_id"], name: "index_clearrecords_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "authority", default: 0
  end

  add_foreign_key "clearrecords", "users"
end
