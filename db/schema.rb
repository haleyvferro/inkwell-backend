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

ActiveRecord::Schema.define(version: 2020_09_16_224541) do

  create_table "character_goals", force: :cascade do |t|
    t.integer "player_notebook_id"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "character_notebooks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string "name"
    t.float "amount_total_earned"
    t.float "amount_existing"
    t.float "amount_total_spent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "character_notes", force: :cascade do |t|
    t.integer "character_notebook_id"
    t.string "title"
    t.text "content"
    t.boolean "visible_to_other_players"
    t.float "amount_spent"
    t.float "amount_earned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_master_notebooks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "game_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_master_notes", force: :cascade do |t|
    t.integer "gm_notebook_id"
    t.string "title"
    t.text "content"
    t.boolean "visible_to_players"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_players", force: :cascade do |t|
    t.integer "game_id"
    t.integer "user_id"
    t.boolean "invite_pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "gm_id"
    t.string "game_name"
    t.text "game_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
