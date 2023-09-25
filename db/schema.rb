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

ActiveRecord::Schema.define(version: 2023_09_19_134602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookngs", force: :cascade do |t|
    t.string "status"
    t.integer "number_of_seats"
    t.time "created_by"
    t.bigint "show_id", null: false
    t.bigint "customer_id", null: false
    t.string "seat_ids", default: [], array: true
    t.string "ticket_id"
    t.index ["customer_id"], name: "index_bookngs_on_customer_id"
    t.index ["show_id"], name: "index_bookngs_on_show_id"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_cinemas_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.integer "pin_code"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.text "desc"
    t.date "release_date"
    t.string "genere"
    t.string "language"
    t.string "duration"
  end

  create_table "payments", force: :cascade do |t|
    t.string "status"
    t.integer "total_ammount"
    t.string "payment_type"
    t.bigint "bookng_id", null: false
    t.bigint "customer_id", null: false
    t.index ["bookng_id"], name: "index_payments_on_bookng_id"
    t.index ["customer_id"], name: "index_payments_on_customer_id"
  end

  create_table "screens", force: :cascade do |t|
    t.string "name"
    t.integer "total_screens"
    t.bigint "cinema_id", null: false
    t.index ["cinema_id"], name: "index_screens_on_cinema_id"
  end

  create_table "seats", force: :cascade do |t|
    t.integer "seat_row"
    t.integer "seat_no"
    t.string "seat_type"
    t.bigint "screen_id", null: false
    t.index ["screen_id"], name: "index_seats_on_screen_id"
  end

  create_table "shows", force: :cascade do |t|
    t.date "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "movie_id", null: false
    t.bigint "screen_id", null: false
    t.index ["movie_id"], name: "index_shows_on_movie_id"
    t.index ["screen_id"], name: "index_shows_on_screen_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "total_price"
    t.bigint "bookng_id", null: false
    t.bigint "screen_id", null: false
    t.bigint "show_id", null: false
    t.string "seat_ids", default: [], array: true
    t.index ["bookng_id"], name: "index_tickets_on_bookng_id"
    t.index ["screen_id"], name: "index_tickets_on_screen_id"
    t.index ["show_id"], name: "index_tickets_on_show_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

  add_foreign_key "bookngs", "customers"
  add_foreign_key "bookngs", "shows"
  add_foreign_key "cinemas", "cities"
  add_foreign_key "payments", "bookngs"
  add_foreign_key "payments", "customers"
  add_foreign_key "screens", "cinemas"
  add_foreign_key "seats", "screens"
  add_foreign_key "shows", "movies"
  add_foreign_key "shows", "screens"
  add_foreign_key "tickets", "bookngs"
  add_foreign_key "tickets", "screens"
  add_foreign_key "tickets", "shows"
end
