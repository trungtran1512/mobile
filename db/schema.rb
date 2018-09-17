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

ActiveRecord::Schema.define(version: 2018_09_17_023912) do

  create_table "matches", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "notes"
    t.string "result"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.integer "member"
    t.integer "type_yard"
    t.string "history"
    t.string "motes"
    t.string "type_sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.integer "phone_number"
    t.string "contact"
    t.string "level"
    t.string "sex"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yards", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.string "phone_number"
    t.string "history"
    t.string "status"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
