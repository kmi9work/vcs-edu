# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100617145001) do

  create_table "comments", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "comment_id"
    t.integer  "user_id"
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "group",                     :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "photo"
    t.integer  "rating",                                   :default => 0
    t.string   "second_name",               :limit => 100
    t.string   "last_name",                 :limit => 100
    t.integer  "karma",                                    :default => 0
  end

  add_index "students", ["login"], :name => "index_students_on_login", :unique => true

  create_table "topics", :force => true do |t|
    t.integer  "user_id"
    t.integer  "voting_id"
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "theme"
    t.text     "annotation"
  end

  create_table "votings", :force => true do |t|
    t.integer  "topic_id"
    t.string   "variants"
    t.integer  "answers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
