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

ActiveRecord::Schema.define(version: 2021_11_16_215052) do

  create_table "bathroom_reservations", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "bathroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bathroom_id"], name: "index_bathroom_reservations_on_bathroom_id"
    t.index ["reservation_id"], name: "index_bathroom_reservations_on_reservation_id"
  end

  create_table "bathrooms", force: :cascade do |t|
    t.string "ubication"
    t.integer "shower"
    t.boolean "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cabin_reservations", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "cabin_id", null: false
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cabin_id"], name: "index_cabin_reservations_on_cabin_id"
    t.index ["reservation_id"], name: "index_cabin_reservations_on_reservation_id"
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "bed"
    t.boolean "bathroom"
    t.boolean "frigobar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campings", force: :cascade do |t|
    t.string "ubication"
    t.integer "area"
    t.integer "tents"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_reservations", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "menu_id", null: false
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_menu_reservations_on_menu_id"
    t.index ["reservation_id"], name: "index_menu_reservations_on_reservation_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "breakfast"
    t.string "launch"
    t.string "launchDessert"
    t.string "dinner"
    t.string "dinnerDessert"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "previews", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "pool"
    t.boolean "sport_center"
    t.boolean "soccerField"
    t.boolean "BeachVolleyball"
    t.integer "people"
    t.integer "state_id", null: false
    t.integer "camping_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camping_id"], name: "index_reservations_on_camping_id"
    t.index ["state_id"], name: "index_reservations_on_state_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "room_reservations", force: :cascade do |t|
    t.integer "reservation_id", null: false
    t.integer "room_id", null: false
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_room_reservations_on_reservation_id"
    t.index ["room_id"], name: "index_room_reservations_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "ubication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bathroom_reservations", "bathrooms"
  add_foreign_key "bathroom_reservations", "reservations"
  add_foreign_key "cabin_reservations", "cabins"
  add_foreign_key "cabin_reservations", "reservations"
  add_foreign_key "menu_reservations", "menus"
  add_foreign_key "menu_reservations", "reservations"
  add_foreign_key "reservations", "campings"
  add_foreign_key "reservations", "states"
  add_foreign_key "reservations", "users"
  add_foreign_key "room_reservations", "reservations"
  add_foreign_key "room_reservations", "rooms"
end
