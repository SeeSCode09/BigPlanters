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

ActiveRecord::Schema.define(version: 2018_11_09_145338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concrete_planters", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "company"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fiberglass_planters", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metal_planters", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "new_products", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plastic_planters", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_groups", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.string "image", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "self_watering_planters", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "price", null: false
    t.string "description", null: false
    t.string "model", null: false
    t.integer "order", null: false
    t.string "image", null: false
    t.string "dimensions"
    t.string "weight"
    t.string "colors"
    t.string "finishes"
    t.string "size_options"
    t.string "additional_info"
    t.string "spec"
    t.string "color_sheet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_areas", force: :cascade do |t|
    t.string "state", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_photo"
    t.string "role", default: "member", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
