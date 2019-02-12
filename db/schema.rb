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

ActiveRecord::Schema.define(version: 2019_02_12_021529) do

  create_table "auditoria", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "cinema_id"
    t.string "name"
    t.integer "seat_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["cinema_id"], name: "index_auditoria_on_cinema_id"
    t.index ["deleted_at"], name: "index_auditoria_on_deleted_at"
  end

  create_table "cinemas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_cinemas_on_deleted_at"
  end

  create_table "movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.string "description"
    t.float "duration"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_movies_on_deleted_at"
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "seat_id"
    t.bigint "user_id"
    t.bigint "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_reservations_on_deleted_at"
    t.index ["schedule_id"], name: "index_reservations_on_schedule_id"
    t.index ["seat_id"], name: "index_reservations_on_seat_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "schedules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "auditorium_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["auditorium_id"], name: "index_schedules_on_auditorium_id"
    t.index ["deleted_at"], name: "index_schedules_on_deleted_at"
    t.index ["movie_id"], name: "index_schedules_on_movie_id"
  end

  create_table "seats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "auditorium_id"
    t.string "row"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["auditorium_id"], name: "index_seats_on_auditorium_id"
    t.index ["deleted_at"], name: "index_seats_on_deleted_at"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone_number"
    t.datetime "deleted_at"
    t.index ["deleted_at"], name: "index_users_on_deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "auditoria", "cinemas"
  add_foreign_key "reservations", "schedules"
  add_foreign_key "reservations", "seats"
  add_foreign_key "reservations", "users"
  add_foreign_key "schedules", "auditoria"
  add_foreign_key "schedules", "movies"
  add_foreign_key "seats", "auditoria"
end
