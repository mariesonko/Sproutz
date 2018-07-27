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

ActiveRecord::Schema.define(version: 2018_07_19_183248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "family_id"
    t.string "firstName"
    t.string "lastName"
    t.string "gender"
    t.date "dateOfBirth"
    t.text "medicalConditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "eventType"
    t.text "description"
    t.string "date"
    t.string "startTime"
    t.string "endTime"
    t.integer "spotsAvailable"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipCode"
    t.string "country"
    t.string "supervisedBy"
    t.string "food"
    t.integer "rating"
    t.integer "eventFees"
    t.string "imageUrl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "title"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer "family_id"
    t.string "firstName"
    t.string "lastName"
    t.date "dateOfBirth"
    t.string "gender"
    t.string "email"
    t.string "cellPhone"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zipCode"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playdates", force: :cascade do |t|
    t.integer "host_id"
    t.integer "guest_id"
    t.integer "event_id"
    t.string "date"
    t.string "startTime"
    t.string "endTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
