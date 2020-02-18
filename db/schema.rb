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

ActiveRecord::Schema.define(version: 2020_02_17_233611) do

  create_table "cashes", force: :cascade do |t|
    t.float "value"
    t.date "date"
    t.boolean "type"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_monthlies_on_customer_id"
  end

  create_table "streets", force: :cascade do |t|
    t.string "district"
    t.string "number"
    t.string "complement"
    t.string "cep"
    t.string "state"
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_streets_on_customer_id"
  end

  add_foreign_key "monthlies", "customers"
  add_foreign_key "streets", "customers"
end
