# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151107213538) do

  create_table "place_costs", force: :cascade do |t|
    t.string   "regard"
    t.decimal  "price"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "place_costs", ["place_id"], name: "index_place_costs_on_place_id"

  create_table "place_facilities", force: :cascade do |t|
    t.boolean  "private_toilet"
    t.boolean  "private_shared_toilet"
    t.boolean  "hot_water"
    t.boolean  "fridge"
    t.boolean  "kitchen"
    t.boolean  "microwave"
    t.boolean  "parking"
    t.boolean  "boat_ramp"
    t.boolean  "barbecue_area"
    t.boolean  "grill_shed"
    t.boolean  "campfire_place"
    t.boolean  "swimming_pool"
    t.boolean  "sound_system"
    t.string   "other"
    t.integer  "place_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "place_facilities", ["place_id"], name: "index_place_facilities_on_place_id"

  create_table "place_nears", force: :cascade do |t|
    t.boolean  "kiosk"
    t.boolean  "disco"
    t.boolean  "beach"
    t.boolean  "national_park"
    t.string   "other"
    t.integer  "place_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "place_nears", ["place_id"], name: "index_place_nears_on_place_id"

  create_table "place_services", force: :cascade do |t|
    t.boolean  "dry_cleaning"
    t.string   "public_transport"
    t.string   "other"
    t.integer  "place_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "place_services", ["place_id"], name: "index_place_services_on_place_id"

  create_table "place_sports", force: :cascade do |t|
    t.boolean  "ping_pong_table"
    t.boolean  "canoe"
    t.boolean  "soccer_field"
    t.boolean  "platform_tennis_court"
    t.boolean  "volleyball_court"
    t.string   "other"
    t.integer  "place_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "place_sports", ["place_id"], name: "index_place_sports_on_place_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "country"
    t.string   "state"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "feature_image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
