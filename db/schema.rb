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

ActiveRecord::Schema.define(:version => 20150803144206) do

  create_table "applicants", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "applications", :force => true do |t|
    t.string   "cv"
    t.string   "linkedin"
    t.integer  "priority"
    t.integer  "military_status"
    t.integer  "vacant_job_id"
    t.integer  "application_status"
    t.integer  "applicant_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "CV_file_name"
    t.string   "CV_content_type"
    t.integer  "CV_file_size"
    t.datetime "CV_updated_at"
  end

  create_table "interview_events", :force => true do |t|
    t.integer  "score"
    t.integer  "application_id"
    t.integer  "interview_type_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "date"
  end

  create_table "interview_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "duration"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "interviewers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "position"
    t.string   "encrypted_password"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "salt"
    t.integer  "user_id"
  end

  create_table "interviews", :id => false, :force => true do |t|
    t.integer  "id",                               :null => false
    t.integer  "score"
    t.integer  "application_id"
    t.integer  "interview_type_id",                :null => false
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "date",              :limit => nil
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
    t.integer  "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vacant_jobs", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
