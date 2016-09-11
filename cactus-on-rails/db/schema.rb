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

ActiveRecord::Schema.define(version: 20160910030116) do

  create_table "plant_images", force: :cascade do |t|
    t.integer  "plant_id"
    t.string   "image_upload"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["plant_id"], name: "index_plant_images_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string   "plant_type"
    t.string   "genus"
    t.string   "species"
    t.string   "common_name"
    t.string   "source"
    t.date     "acquired_date"
    t.boolean  "grown_from_seed"
    t.date     "planted_date"
    t.integer  "age_when_acquired_months"
    t.string   "pot_type"
    t.string   "pot_size"
    t.text     "care_notes"
    t.date     "repotted_date"
    t.date     "next_repotting_date"
    t.text     "notes"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
