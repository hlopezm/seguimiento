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

ActiveRecord::Schema.define(version: 20161111021828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "nombre"
    t.string   "presidente_mpal"
    t.text     "observaciones"
    t.integer  "prioridad"
    t.string   "image"
    t.integer  "report_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["report_id"], name: "index_cities_on_report_id", using: :btree
  end

  create_table "cities_federals", id: false, force: :cascade do |t|
    t.integer "city_id",    null: false
    t.integer "federal_id", null: false
    t.index ["city_id", "federal_id"], name: "index_cities_federals_on_city_id_and_federal_id", using: :btree
    t.index ["federal_id", "city_id"], name: "index_cities_federals_on_federal_id_and_city_id", using: :btree
  end

  create_table "cities_locals", id: false, force: :cascade do |t|
    t.integer "city_id",  null: false
    t.integer "local_id", null: false
    t.index ["city_id", "local_id"], name: "index_cities_locals_on_city_id_and_local_id", using: :btree
    t.index ["local_id", "city_id"], name: "index_cities_locals_on_local_id_and_city_id", using: :btree
  end

  create_table "cities_reports", id: false, force: :cascade do |t|
    t.integer "report_id", null: false
    t.integer "city_id",   null: false
    t.index ["city_id", "report_id"], name: "index_cities_reports_on_city_id_and_report_id", using: :btree
    t.index ["report_id", "city_id"], name: "index_cities_reports_on_report_id_and_city_id", using: :btree
  end

  create_table "federals", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "report_id"
    t.string   "nombre"
    t.string   "diputado"
    t.string   "image"
    t.integer  "prioridad"
    t.text     "observaciones"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["city_id"], name: "index_federals_on_city_id", using: :btree
    t.index ["report_id"], name: "index_federals_on_report_id", using: :btree
  end

  create_table "federals_reports", id: false, force: :cascade do |t|
    t.integer "report_id",  null: false
    t.integer "federal_id", null: false
    t.index ["federal_id", "federal_id"], name: "index_federals_reports_on_federal_id_and_federal_id", using: :btree
    t.index ["report_id", "federal_id"], name: "index_federals_reports_on_report_id_and_federal_id", using: :btree
  end

  create_table "locals", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "report_id"
    t.string   "nombre"
    t.string   "diputado"
    t.string   "image"
    t.integer  "prioridad"
    t.text     "observaciones"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["city_id"], name: "index_locals_on_city_id", using: :btree
    t.index ["report_id"], name: "index_locals_on_report_id", using: :btree
  end

  create_table "locals_reports", id: false, force: :cascade do |t|
    t.integer "report_id", null: false
    t.integer "local_id",  null: false
    t.index ["local_id", "report_id"], name: "index_locals_reports_on_local_id_and_report_id", using: :btree
    t.index ["report_id", "local_id"], name: "index_locals_reports_on_report_id_and_local_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "fecha"
    t.string   "direccion"
    t.text     "descripcion"
    t.string   "image"
    t.integer  "id_city"
    t.integer  "id_federal"
    t.integer  "id_local"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  add_foreign_key "federals", "cities"
  add_foreign_key "federals", "reports"
  add_foreign_key "locals", "cities"
  add_foreign_key "locals", "reports"
end
