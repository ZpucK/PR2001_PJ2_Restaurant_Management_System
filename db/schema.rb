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

ActiveRecord::Schema.define(version: 2020_09_21_125700) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "contents"
    t.integer "user_id", null: false
    t.integer "dish_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_comments_on_dish_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "contents"
    t.integer "money"
    t.string "image_dish"
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_dishes_on_category_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer "dish_id", null: false
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_images_on_dish_id"
  end

  create_table "menu_dishes", force: :cascade do |t|
    t.integer "menu_id", null: false
    t.integer "dish_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_menu_dishes_on_dish_id"
    t.index ["menu_id"], name: "index_menu_dishes_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "dish_id", null: false
    t.integer "quantity"
    t.integer "price"
    t.integer "cost"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_order_details_on_dish_id"
    t.index ["order_id"], name: "index_order_details_on_order_id"
  end

  create_table "order_tables", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "table_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_tables_on_order_id"
    t.index ["table_id"], name: "index_order_tables_on_table_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.integer "table_id", null: false
    t.integer "people"
    t.datetime "timeorder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_price"
    t.index ["table_id"], name: "index_orders_on_table_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "contents"
    t.integer "user_id", null: false
    t.integer "dish_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_reviews_on_dish_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string "name"
    t.integer "people"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin"
    t.string "name"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
