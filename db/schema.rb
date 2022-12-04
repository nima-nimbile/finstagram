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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "timescaledb"

  create_table "comments", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "finstagram_post_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finstagram_post_id"], name: "index_comments_on_finstagram_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "finstagram_posts", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_finstagram_posts_on_user_id"
  end

  create_table "likes", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "finstagram_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finstagram_post_id"], name: "index_likes_on_finstagram_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "username"
    t.string "avatar_url"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
