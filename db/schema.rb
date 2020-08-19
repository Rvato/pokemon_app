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

ActiveRecord::Schema.define(version: 2020_08_17_103152) do

  create_table "base_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "bs_hp", null: false
    t.string "bs_attack", null: false
    t.string "bs_defense", null: false
    t.string "bs_special_attack", null: false
    t.string "bs_special_defense", null: false
    t.string "bs_speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "current_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "cs_hp", null: false
    t.string "cs_attack", null: false
    t.string "cs_defense", null: false
    t.string "cs_special_attack", null: false
    t.string "cs_special_defense", null: false
    t.string "cs_speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "effort_values", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ev_hp", null: false
    t.string "ev_attack", null: false
    t.string "ev_defense", null: false
    t.string "ev_special_attack", null: false
    t.string "ev_special_defense", null: false
    t.string "ev_speed", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_markings_on_pokemon_id"
  end

  create_table "parties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "party_id", null: false
    t.string "party_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pokemon_id", null: false
    t.string "name", null: false
    t.string "nickname"
    t.string "gender", null: false
    t.string "ability", null: false
    t.string "nature", null: false
    t.string "item"
    t.string "move1", null: false
    t.string "move2"
    t.string "move3"
    t.string "move4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "markings", "pokemons"
end
