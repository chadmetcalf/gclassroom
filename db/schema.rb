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

ActiveRecord::Schema.define(version: 20160917232131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.integer  "show_id"
    t.string   "title"
    t.string   "subtitle"
    t.integer  "season"
    t.integer  "episode"
    t.date     "aired_on"
    t.string   "written_by"
    t.string   "directed_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["show_id"], name: "index_episodes_on_show_id", using: :btree
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "subtitle"
    t.date     "released_on"
    t.string   "written_by"
    t.string   "directed_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "uri"
    t.string   "media_type"
    t.integer  "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["video_id"], name: "index_sources_on_video_id", using: :btree
  end

  create_table "videos", force: :cascade do |t|
    t.string   "streamable_type"
    t.integer  "streamable_id"
    t.string   "rtmp_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["streamable_type", "streamable_id"], name: "index_videos_on_streamable_type_and_streamable_id", using: :btree
  end

end
