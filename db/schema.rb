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

ActiveRecord::Schema.define(version: 2021_12_05_043730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demographics", force: :cascade do |t|
    t.integer "user_id"
    t.string "email"
    t.string "gender"
    t.string "marital_status"
    t.integer "height"
    t.integer "weight"
    t.string "race"
    t.string "ethnicity"
    t.string "income_group"
    t.boolean "blue_button_approval"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "health_histories", force: :cascade do |t|
    t.integer "health_history_id"
    t.integer "patient_id"
    t.string "relation"
    t.string "status"
    t.string "value_type"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incase_emerges", force: :cascade do |t|
    t.integer "user_id"
    t.integer "emergency_contact_number"
    t.string "emergency_contact_name"
    t.string "emergency_contact_address"
    t.string "emergency_contact_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.integer "user_id"
    t.string "insurance_no"
    t.string "rx_group"
    t.string "rx_bin"
    t.string "rx_pcn"
    t.string "rx_insurancetype"
    t.string "providerName"
    t.string "priorityChoice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pat_demographics", force: :cascade do |t|
    t.integer "pid"
    t.string "patient_email"
    t.string "gender"
    t.string "maritalstatus"
    t.string "race"
    t.string "ethinicity"
    t.string "incomegroup"
    t.string "bloodtype"
    t.string "patDPLocation"
    t.datetime "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pat_details", force: :cascade do |t|
    t.string "fname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pat_ices", force: :cascade do |t|
    t.string "patient_email"
    t.string "ice_contact"
    t.string "ice_name"
    t.string "ice_email"
    t.string "ice_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pat_insurances", force: :cascade do |t|
    t.integer "pid"
    t.string "insurid"
    t.string "rxgroup"
    t.string "rxbin"
    t.string "rxgpcn"
    t.string "rxinsurtype"
    t.string "providername"
    t.string "prioritychoice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer "pid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.datetime "dob"
    t.string "email"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "phone_no"
    t.string "user_type"
    t.boolean "login"
    t.string "session"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
