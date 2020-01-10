# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_10_023057) do

  create_table "characters", force: :cascade do |t|
    t.string "character_name"
    t.integer "world_id"
    t.integer "user_id"
    t.integer "health"
    t.integer "exp"
    t.integer "intelligence"
    t.integer "strength"
    t.integer "presence"
    t.integer "wits"
    t.integer "dexterity"
    t.integer "manipulation"
    t.integer "resolve"
    t.integer "stamina"
    t.integer "composure"
    t.integer "academics"
    t.integer "computer"
    t.integer "crafts"
    t.integer "investigation"
    t.integer "medicine"
    t.integer "occult"
    t.integer "politics"
    t.integer "science"
    t.integer "athletics"
    t.integer "brawl"
    t.integer "drive"
    t.integer "firearms"
    t.integer "larceny"
    t.integer "stealth"
    t.integer "survival"
    t.integer "weaponry"
    t.integer "animal_ken"
    t.integer "empathy"
    t.integer "expression"
    t.integer "intimidation"
    t.integer "persuasion"
    t.integer "socialize"
    t.integer "streetwise"
    t.integer "subtlefuge"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "worlds", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
  end

end
