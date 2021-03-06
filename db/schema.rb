# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180304004702) do

  create_table "addresses", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "business_infos", force: :cascade do |t|
    t.integer "merchant_application_id"
    t.string "business_name"
    t.string "legal_name"
    t.integer "location_address_id"
    t.string "email"
    t.string "website"
    t.integer "billing_address_id"
    t.string "contact_name"
    t.string "contact_phone"
    t.string "contact_fax"
    t.string "contact_email"
    t.string "customer_service_email"
    t.boolean "retreival_request_to_business_address"
    t.string "retreival_request_fax_number"
    t.integer "mcc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchant_applications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owner_infos", force: :cascade do |t|
    t.string "name"
    t.string "ownership_percent"
    t.string "date_of_birth"
    t.string "ssn"
    t.string "email_address"
    t.integer "home_address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "merchant_application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
