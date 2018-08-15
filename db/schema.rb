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

ActiveRecord::Schema.define(version: 2018_08_14_215311) do

  create_table "tlc_lists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tlcp_rueba_lists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabajadores_items", force: :cascade do |t|
    t.string "content"
    t.integer "trabajadores_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trabajadores_list_id"], name: "index_trabajadores_items_on_trabajadores_list_id"
  end

  create_table "trabajadores_lists", force: :cascade do |t|
    t.string "Nombres"
    t.text "Apellidos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
