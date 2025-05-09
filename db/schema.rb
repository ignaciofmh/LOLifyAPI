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

ActiveRecord::Schema[7.1].define(version: 2025_04_21_040821) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "need_legal_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jokes", force: :cascade do |t|
    t.text "content"
    t.float "rank_avg"
    t.bigint "category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_jokes_on_category_id"
    t.index ["user_id"], name: "index_jokes_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "list_type"
    t.bigint "user_id", null: false
    t.bigint "joke_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["joke_id"], name: "index_lists_on_joke_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.integer "rank"
    t.bigint "user_id", null: false
    t.bigint "joke_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["joke_id"], name: "index_ranks_on_joke_id"
    t.index ["user_id"], name: "index_ranks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birthday"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jokes", "categories"
  add_foreign_key "jokes", "users"
  add_foreign_key "lists", "jokes"
  add_foreign_key "lists", "users"
  add_foreign_key "ranks", "jokes"
  add_foreign_key "ranks", "users"
end
