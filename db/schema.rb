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

ActiveRecord::Schema.define(version: 20161119053613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "nombre"
    t.string   "pdte_mpal"
    t.string   "partido_pdte"
    t.text     "observaciones"
    t.integer  "prioridad"
    t.string   "image"
    t.string   "cityable_type"
    t.integer  "cityable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["cityable_type", "cityable_id"], name: "index_cities_on_cityable_type_and_cityable_id", using: :btree
  end

  create_table "districts", force: :cascade do |t|
    t.string   "nombre"
    t.string   "diputado"
    t.string   "image"
    t.integer  "prioridad"
    t.text     "observaciones"
    t.string   "type"
    t.string   "districtable_type"
    t.integer  "districtable_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["districtable_type", "districtable_id"], name: "index_districts_on_districtable_type_and_districtable_id", using: :btree
  end

  create_table "elections", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "result_id",  default: 1
    t.index ["result_id"], name: "index_elections_on_result_id", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "nombre"
    t.string   "nombre_corto"
    t.string   "image"
    t.string   "partyable_type"
    t.integer  "partyable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["partyable_type", "partyable_id"], name: "index_parties_on_partyable_type_and_partyable_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "fecha"
    t.string   "direccion"
    t.text     "descripcion"
    t.string   "image"
    t.string   "reportable_type"
    t.integer  "reportable_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "election_id",     default: 1
    t.index ["election_id"], name: "index_reports_on_election_id", using: :btree
    t.index ["reportable_type", "reportable_id"], name: "index_reports_on_reportable_type_and_reportable_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.string   "name"
    t.decimal  "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "elections", "results"
  add_foreign_key "reports", "elections"
end
