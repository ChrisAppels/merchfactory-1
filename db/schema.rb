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

ActiveRecord::Schema.define(version: 20161115124634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "unit_number"
    t.string   "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "post_code"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "features", force: :cascade do |t|
    t.string   "description"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["product_id"], name: "index_features_on_product_id", using: :btree
  end

  create_table "order_item_designs", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_design_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["order_id"], name: "index_order_item_designs_on_order_id", using: :btree
    t.index ["product_design_id"], name: "index_order_item_designs_on_product_design_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "product_id"
    t.string   "status"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_items_on_product_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.integer  "address_id"
    t.integer  "user_id"
    t.integer  "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_orders_on_address_id", using: :btree
    t.index ["staff_id"], name: "index_orders_on_staff_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "url"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_pictures_on_product_id", using: :btree
  end

  create_table "price_breaks", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_price_breaks_on_product_id", using: :btree
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_product_categories_on_category_id", using: :btree
    t.index ["product_id"], name: "index_product_categories_on_product_id", using: :btree
  end

  create_table "product_design_files", force: :cascade do |t|
    t.integer  "product_design_id"
    t.string   "label"
    t.string   "design_file"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["product_design_id"], name: "index_product_design_files_on_product_design_id", using: :btree
  end

  create_table "product_designs", force: :cascade do |t|
    t.string   "design_name"
    t.integer  "user_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["product_id"], name: "index_product_designs_on_product_id", using: :btree
    t.index ["user_id"], name: "index_product_designs_on_user_id", using: :btree
  end

  create_table "product_templates", force: :cascade do |t|
    t.string   "template_file"
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["product_id"], name: "index_product_templates_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "sku"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id", using: :btree
    t.index ["user_id"], name: "index_user_roles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "company_name"
    t.string   "role"
    t.string   "avatar"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "features", "products"
  add_foreign_key "order_item_designs", "orders"
  add_foreign_key "order_item_designs", "product_designs"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "addresses"
  add_foreign_key "orders", "users"
  add_foreign_key "pictures", "products"
  add_foreign_key "price_breaks", "products"
  add_foreign_key "product_categories", "categories"
  add_foreign_key "product_categories", "products"
  add_foreign_key "product_design_files", "product_designs"
  add_foreign_key "product_designs", "products"
  add_foreign_key "product_designs", "users"
  add_foreign_key "product_templates", "products"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
