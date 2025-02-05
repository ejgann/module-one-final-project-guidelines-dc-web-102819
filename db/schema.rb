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

ActiveRecord::Schema.define(version: 3) do

  create_table "playlists", force: :cascade do |t|
    t.string "title"
    t.integer "min_tempo"
    t.integer "max_tempo"
  end

  create_table "song_playlists", force: :cascade do |t|
    t.integer "song_id"
    t.integer "playlist_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "tempo"
  end

end
