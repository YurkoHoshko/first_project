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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130204094055) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "commerce_demands", :force => true do |t|
    t.string   "district"
    t.string   "street"
    t.decimal  "square"
    t.decimal  "price"
    t.string   "reason"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commerce_proposes", :force => true do |t|
    t.string   "Condition"
    t.integer  "Stage"
    t.string   "Type_fond"
    t.string   "District"
    t.string   "Street"
    t.decimal  "Square"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.string   "Type"
    t.string   "Heating"
    t.string   "Furniture"
    t.string   "Owner_name"
    t.string   "Owner_phone"
    t.string   "Other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demands", :force => true do |t|
    t.string   "district"
    t.string   "street"
    t.decimal  "price"
    t.integer  "count_of_rooms"
    t.string   "owner_name"
    t.string   "owner_phone"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "private_realty_demands", :force => true do |t|
    t.string   "District"
    t.string   "Street"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.string   "Condition"
    t.decimal  "Square"
    t.string   "Type"
    t.string   "Heating"
    t.integer  "Contacts"
    t.string   "Buyer"
    t.string   "Other"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "private_realty_proposes", :force => true do |t|
    t.string   "District"
    t.string   "Street"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.string   "Condition"
    t.decimal  "Square"
    t.integer  "Stage"
    t.string   "Type"
    t.string   "Heating"
    t.integer  "Contacts"
    t.string   "Owner"
    t.string   "Other"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "proposes", :force => true do |t|
    t.string   "District"
    t.string   "Address"
    t.decimal  "Price"
    t.integer  "Count_of_rooms"
    t.integer  "Stage"
    t.string   "House"
    t.string   "heating"
    t.string   "furniture"
    t.string   "condition"
    t.string   "Owner_name"
    t.string   "owner_phone"
    t.boolean  "Able"
    t.date     "Not_able_to"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
