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

ActiveRecord::Schema.define(version: 20160918070142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "episodes", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid    "show_id"
    t.string  "title"
    t.string  "subtitle"
    t.integer "season_number"
    t.integer "episode_number"
    t.date    "aired_on"
    t.string  "written_by"
    t.string  "directed_by"
    t.index ["show_id"], name: "index_episodes_on_show_id", using: :btree
  end

  create_table "movies", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.date   "released_on"
    t.string "written_by"
    t.string "directed_by"
  end

  create_table "shows", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string "title"
  end

  create_table "sources", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string "uri"
    t.string "media_type"
    t.uuid   "video_id"
    t.index ["video_id"], name: "index_sources_on_video_id", using: :btree
  end

  create_table "videos", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string "streamable_type"
    t.uuid   "streamable_id"
    t.string "rtmp_uri"
    t.index ["streamable_type", "streamable_id"], name: "index_videos_on_streamable_type_and_streamable_id", using: :btree
  end

end
