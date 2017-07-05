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

ActiveRecord::Schema.define(version: 20170703210253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "brand"
    t.string "description", null: false
    t.string "model_number"
    t.bigint "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_items_on_store_id"
  end

  create_table "items_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.string "price", null: false
    t.string "per"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_items_users_on_item_id"
    t.index ["user_id"], name: "index_items_users_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone_number"
    t.string "address1", null: false
    t.string "address2"
    t.string "address3"
    t.string "city", null: false
    t.string "state", null: false
    t.string "postal_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "stores"
  add_foreign_key "items_users", "items"
  add_foreign_key "items_users", "users"
end
