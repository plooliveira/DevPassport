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

ActiveRecord::Schema.define(version: 2020_11_14_182027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_reviews", force: :cascade do |t|
    t.bigint "stamp_id", null: false
    t.bigint "user_id", null: false
    t.float "reviewer_grade"
    t.string "test_answer"
    t.text "reviewer_feedback"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stamp_id"], name: "index_code_reviews_on_stamp_id"
    t.index ["user_id"], name: "index_code_reviews_on_user_id"
  end

  create_table "stamps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "test_id", null: false
    t.date "issuing_date"
    t.date "expiration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_stamps_on_test_id"
    t.index ["user_id"], name: "index_stamps_on_user_id"
  end

  create_table "tests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.text "description"
    t.bigint "visa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tests_on_user_id"
    t.index ["visa_id"], name: "index_tests_on_visa_id"
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

  create_table "visas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "code_reviews", "stamps"
  add_foreign_key "code_reviews", "users"
  add_foreign_key "stamps", "tests"
  add_foreign_key "stamps", "users"
  add_foreign_key "tests", "users"
  add_foreign_key "tests", "visas"
end
