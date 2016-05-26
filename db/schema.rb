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

ActiveRecord::Schema.define(version: 20160426183802) do

  create_table "applications", force: :cascade do |t|
    t.string   "coll_address",        limit: 255
    t.string   "guarantor",           limit: 255
    t.string   "phone",               limit: 255
    t.string   "email",               limit: 255
    t.string   "trans_type",          limit: 255
    t.string   "lien_position",       limit: 255
    t.decimal  "gross_loan",                      precision: 10
    t.decimal  "liens_paid",                      precision: 10
    t.decimal  "cash_out",                        precision: 10
    t.decimal  "holdback",                        precision: 10
    t.decimal  "equity",                          precision: 10
    t.decimal  "closing_costs",                   precision: 10
    t.decimal  "due_diligence",                   precision: 10
    t.decimal  "appraisal",                       precision: 10
    t.decimal  "dd_fee_rebate",                   precision: 10
    t.decimal  "processing_fee",                  precision: 10
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "bizname",             limit: 255
    t.string   "biztype",             limit: 255
    t.string   "bizadd",              limit: 255
    t.string   "bizsuite",            limit: 255
    t.string   "bizcity",             limit: 255
    t.string   "bizstate",            limit: 255
    t.string   "bizzip",              limit: 255
    t.string   "bizphone",            limit: 255
    t.string   "bizemail",            limit: 255
    t.string   "fein",                limit: 255
    t.string   "sixmonth_reserves",   limit: 255
    t.string   "guarantee",           limit: 255
    t.string   "fname",               limit: 255
    t.string   "lname",               limit: 255
    t.string   "home_address",        limit: 255
    t.string   "Hapt",                limit: 255
    t.string   "hcity",               limit: 255
    t.string   "hstate",              limit: 255
    t.string   "hzip",                limit: 255
    t.string   "hphone",              limit: 255
    t.string   "hemail",              limit: 255
    t.string   "subcity",             limit: 255
    t.string   "substate",            limit: 255
    t.string   "subzip",              limit: 255
    t.string   "subpin",              limit: 255
    t.string   "prop_type",           limit: 255
    t.boolean  "zoned_ag"
    t.boolean  "fouracres"
    t.boolean  "two"
    t.boolean  "miles_sub"
    t.boolean  "fivemiles_amenities"
    t.boolean  "firsttime"
    t.integer  "propsown",            limit: 4
    t.integer  "purchsixmo",          limit: 4
    t.integer  "purchtwevelemo",      limit: 4
    t.integer  "purchlife",           limit: 4
    t.decimal  "avg_price",                       precision: 10
    t.boolean  "twelve_in_tweleve"
    t.boolean  "bk"
    t.boolean  "sixty_days"
    t.boolean  "last_fc_ss"
    t.string   "ssn",                 limit: 255
    t.boolean  "citizen"
    t.string   "credit_score",        limit: 255
    t.decimal  "salesprice",                      precision: 10
    t.boolean  "contract"
    t.string   "current_val",         limit: 255
    t.string   "seller_con",          limit: 255
    t.string   "contract_exp",        limit: 255
    t.string   "as_is_val",           limit: 255
    t.string   "rehab_funds",         limit: 255
    t.string   "arv",                 limit: 255
    t.string   "arv_just",            limit: 255
    t.string   "purch_date",          limit: 255
    t.decimal  "purch_price",                     precision: 10
    t.decimal  "verif_improv",                    precision: 10
    t.decimal  "payoff",                          precision: 10
    t.boolean  "hard_money"
    t.string   "lender_name",         limit: 255
    t.string   "lender_phone",        limit: 255
    t.boolean  "rented"
    t.boolean  "sectioneight"
    t.boolean  "mtm"
    t.boolean  "management"
    t.decimal  "mgmt_fee",                        precision: 10
    t.string   "entity",              limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
