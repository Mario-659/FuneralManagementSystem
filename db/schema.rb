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

ActiveRecord::Schema[7.0].define(version: 2023_06_11_133239) do
  create_table "deceaseds", force: :cascade do |t|
    t.integer "deceased_id"
    t.integer "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.date "date_of_death"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deceaseds_on_user_id"
  end

  create_table "funeral_service_orders", force: :cascade do |t|
    t.integer "order_id"
    t.integer "funeral_id", null: false
    t.integer "service_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funeral_id"], name: "index_funeral_service_orders_on_funeral_id"
    t.index ["service_id"], name: "index_funeral_service_orders_on_service_id"
  end

  create_table "funeral_services", force: :cascade do |t|
    t.integer "service_id"
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funerals", force: :cascade do |t|
    t.integer "funeral_id"
    t.integer "deceased_id", null: false
    t.string "burial_place"
    t.integer "burial_type"
    t.string "reception_location"
    t.date "funeral_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deceased_id"], name: "index_funerals_on_deceased_id"
  end

  create_table "mourning_cards", force: :cascade do |t|
    t.integer "card_id"
    t.integer "funeral_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funeral_id"], name: "index_mourning_cards_on_funeral_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_role"
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "deceaseds", "users"
  add_foreign_key "funeral_service_orders", "funerals"
  add_foreign_key "funeral_service_orders", "services"
  add_foreign_key "funerals", "deceaseds"
  add_foreign_key "mourning_cards", "funerals"
end
