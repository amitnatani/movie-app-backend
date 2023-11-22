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

ActiveRecord::Schema[7.1].define(version: 2023_11_21_182444) do
  create_table "favourite_movies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_favourite_movies_on_movie_id"
    t.index ["user_id", "movie_id"], name: "index_favourite_movies_on_user_id_and_movie_id", unique: true
  end

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.integer "year", null: false
    t.string "genre", null: false
    t.decimal "budget_in_cr", null: false
    t.decimal "box_office_earnings_in_cr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title", "year"], name: "idx_title_year_on_movies"
    t.index ["title"], name: "index_movies_on_title"
    t.index ["year"], name: "index_movies_on_year"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100, null: false
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50
    t.string "phone_number", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favourite_movies", "movies"
  add_foreign_key "favourite_movies", "users"
end
