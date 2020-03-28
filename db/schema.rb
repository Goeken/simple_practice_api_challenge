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

ActiveRecord::Schema.define(version: 2020_03_27_174654) do

  create_table "clinicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "suffix"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cpt_codes", force: :cascade do |t|
    t.string "description"
    t.integer "duration"
    t.integer "rate"
    t.boolean "call_to_book"
    t.integer "clinician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinician_id"], name: "index_cpt_codes_on_clinician_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "city"
    t.string "name"
    t.string "state"
    t.string "street"
    t.string "phone"
    t.integer "zip"
    t.integer "cpt_code_id", null: false
    t.integer "clinician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinician_id"], name: "index_offices_on_clinician_id"
    t.index ["cpt_code_id"], name: "index_offices_on_cpt_code_id"
  end

  add_foreign_key "cpt_codes", "clinicians"
  add_foreign_key "offices", "clinicians"
  add_foreign_key "offices", "cpt_codes"
end
