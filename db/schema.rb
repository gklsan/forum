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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150213123519) do

  create_table "authors", :force => true do |t|
    t.string  "aname",   :limit => nil
    t.string  "address", :limit => nil
    t.integer "phone",   :limit => 8
  end

  create_table "books", :force => true do |t|
    t.string  "bname",       :limit => nil
    t.integer "totalpage"
    t.decimal "bcost"
    t.date    "publishdate"
    t.integer "author_id"
  end

  create_table "cars", :force => true do |t|
    t.string  "carname", :limit => nil
    t.string  "color",   :limit => nil
    t.integer "spec_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "contractors", :force => true do |t|
    t.string "name",        :limit => nil
    t.string "contaddress", :limit => nil
  end

  create_table "contracts", :force => true do |t|
    t.string  "contractname",  :limit => nil
    t.integer "department_id"
    t.integer "contractor_id"
    t.date    "contdate"
    t.string  "contract_no",   :limit => nil
  end

  create_table "departments", :force => true do |t|
    t.string "deptname",  :limit => nil
    t.string "address",   :limit => nil
    t.string "minsunder", :limit => nil
    t.string "street",    :limit => nil
    t.string "city",      :limit => nil
    t.string "state",     :limit => 100
  end

  create_table "doctors", :force => true do |t|
    t.string "doctname",   :limit => nil
    t.string "specialist", :limit => nil
    t.date   "birthdate"
  end

  create_table "elementreverses", :force => true do |t|
    t.string  "elements", :limit => nil
    t.integer "elediv"
    t.string  "output",   :limit => nil
  end

  create_table "employees", :force => true do |t|
    t.string  "empname",  :limit => nil
    t.integer "phone"
    t.date    "joindate"
    t.decimal "salary",                  :precision => 19, :scale => 2
  end

  create_table "emps", :force => true do |t|
    t.string  "fname",             :limit => nil
    t.string  "lname",             :limit => nil
    t.float   "workday"
    t.integer "nproject_id"
    t.decimal "salary"
    t.date    "joindate"
    t.integer "department_id"
    t.string  "gender",            :limit => nil
    t.string  "nprojects_details", :limit => nil
  end

  create_table "nprojects", :force => true do |t|
    t.string "project", :limit => nil
  end

  create_table "patients", :force => true do |t|
    t.string "pname",    :limit => nil
    t.string "paddress", :limit => nil
    t.date   "dob"
  end

  create_table "people", :force => true do |t|
    t.string  "name",    :limit => nil
    t.string  "address", :limit => nil
    t.integer "car_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "treatments", :force => true do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.date    "treatdate"
    t.string  "medicine",   :limit => nil
    t.string  "disease",    :limit => nil
    t.integer "fees"
  end

  create_table "tweets", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "zombie_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "zombies", :force => true do |t|
    t.string "name",      :limit => nil
    t.string "graveyard", :limit => nil
  end

  create_table "zombies1", :id => false, :force => true do |t|
    t.integer "id",     :null => false
    t.string  "status"
    t.string  "zombie"
  end

  create_table "zombies2s", :force => true do |t|
    t.string  "status"
    t.string  "zombie"
    t.integer "phone",  :limit => 8
  end

end
