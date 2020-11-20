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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_11_16_204315) do
=======
ActiveRecord::Schema.define(version: 2020_11_18_041030) do

  create_table "control_products", force: :cascade do |t|
    t.string "ica_registration"
    t.string "name"
    t.integer "application_frequency"
    t.integer "price_product"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labors", force: :cascade do |t|
    t.integer "Control_product_id", null: false
    t.datetime "date"
    t.string "description"
    t.string "labor_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Control_product_id"], name: "index_labors_on_Control_product_id"
  end

  create_table "labors_nurseries", id: false, force: :cascade do |t|
    t.integer "labor_id"
    t.integer "nursery_id"
    t.index ["labor_id"], name: "index_labors_nurseries_on_labor_id"
    t.index ["nursery_id"], name: "index_labors_nurseries_on_nursery_id"
  end

  create_table "nurseries", force: :cascade do |t|
    t.integer "producer_id", null: false
    t.string "nursery_code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producer_id"], name: "index_nurseries_on_producer_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "document_type"
    t.string "document_number"
    t.string "name"
    t.string "lastname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "towns", force: :cascade do |t|
    t.integer "department_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_towns_on_department_id"
  end
>>>>>>> 81b6e201c3b262ec5d22e55e86421b3a19870e3f

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "labors", "Control_products"
  add_foreign_key "nurseries", "producers"
  add_foreign_key "towns", "departments"
end
