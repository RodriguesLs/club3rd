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

ActiveRecord::Schema.define(version: 2020_04_03_005804) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "district"
    t.string "city"
    t.string "number"
    t.string "complement"
    t.string "cep", limit: 9
    t.string "state", limit: 2
    t.integer "costumer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["costumer_id"], name: "index_addresses_on_costumer_id"
  end

  create_table "cashes", force: :cascade do |t|
    t.float "value"
    t.date "date"
    t.string "kind"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price_cents", default: 0
    t.boolean "status"
  end

  create_table "costumers", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.string "rg"
    t.string "cpf"
    t.string "phone"
    t.string "mobile_phone"
    t.date "date_of_birth"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monthlies", force: :cascade do |t|
    t.string "status"
    t.string "price"
    t.date "date"
    t.integer "costumer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["costumer_id"], name: "index_monthlies_on_costumer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "costumers"
  add_foreign_key "monthlies", "costumers"
end
