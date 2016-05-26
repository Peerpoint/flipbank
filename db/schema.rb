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
    t.string   "coll_address"
    t.string   "guarantor"
    t.string   "phone"
    t.string   "email"
    t.string   "trans_type"
    t.string   "lien_position"
    t.decimal  "gross_loan"
    t.decimal  "liens_paid"
    t.decimal  "cash_out"
    t.decimal  "holdback"
    t.decimal  "equity"
    t.decimal  "closing_costs"
    t.decimal  "due_diligence"
    t.decimal  "appraisal"
    t.decimal  "dd_fee_rebate"
    t.decimal  "processing_fee"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "bizname"
    t.string   "biztype"
    t.string   "bizadd"
    t.string   "bizsuite"
    t.string   "bizcity"
    t.string   "bizstate"
    t.string   "bizzip"
    t.string   "bizphone"
    t.string   "bizemail"
    t.string   "fein"
    t.string   "sixmonth_reserves"
    t.string   "guarantee"
    t.string   "fname"
    t.string   "lname"
    t.string   "home_address"
    t.string   "Hapt"
    t.string   "hcity"
    t.string   "hstate"
    t.string   "hzip"
    t.string   "hphone"
    t.string   "hemail"
    t.string   "subcity"
    t.string   "substate"
    t.string   "subzip"
    t.string   "subpin"
    t.string   "prop_type"
    t.string   "zoned_ag"
    t.string   "fouracres"
    t.string   "two"
    t.string   "miles_sub"
    t.string   "fivemiles_amenities"
    t.boolean  "firsttime"
    t.decimal  "propsown"
    t.decimal  "purchsixmo"
    t.decimal  "purchtwevelemo"
    t.decimal  "purchlife"
    t.decimal  "avg_price"
    t.boolean  "twelve_in_tweleve"
    t.boolean  "bk"
    t.boolean  "sixty_days"
    t.boolean  "last_fc_ss"
    t.string   "ssn"
    t.boolean  "citizen"
    t.string   "credit_score"
    t.decimal  "salesprice"
    t.boolean  "contract"
    t.string   "current_val"
    t.string   "seller_con"
    t.string   "contract_exp"
    t.string   "as_is_val"
    t.string   "rehab_funds"
    t.string   "arv"
    t.string   "arv_just"
    t.string   "purch_date"
    t.decimal  "purch_price"
    t.decimal  "verif_improv"
    t.decimal  "payoff"
    t.boolean  "hard_money"
    t.string   "lender_name"
    t.string   "lender_phone"
    t.boolean  "rented"
    t.boolean  "sectioneight"
    t.boolean  "mtm"
    t.boolean  "management"
    t.decimal  "mgmt_fee"
    t.string   "entity"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
