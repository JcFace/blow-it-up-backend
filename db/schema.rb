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

ActiveRecord::Schema.define(version: 2021_01_14_183415) do

  create_table "art_pieces", force: :cascade do |t|
    t.string "name"
    t.string "creator_name"
    t.string "description"
    t.string "img_url"
    t.string "price"
    t.boolean "owned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cart_pieces", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "art_piece_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["art_piece_id"], name: "index_cart_pieces_on_art_piece_id"
    t.index ["user_id"], name: "index_cart_pieces_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "art_piece_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["art_piece_id"], name: "index_favorites_on_art_piece_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "is_client"
    t.string "bio"
    t.string "img_url"
    t.float "lat"
    t.float "lng"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cart_pieces", "art_pieces"
  add_foreign_key "cart_pieces", "users"
  add_foreign_key "favorites", "art_pieces"
  add_foreign_key "favorites", "users"
end
