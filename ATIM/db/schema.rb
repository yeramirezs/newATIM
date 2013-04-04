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

ActiveRecord::Schema.define(:version => 20130326051754) do

  create_table "books", :force => true do |t|
    t.string   "author"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "commitments", :force => true do |t|
    t.string   "title",                          :null => false
    t.text     "description"
    t.integer  "thesis_id",                      :null => false
    t.integer  "meeting_id",                     :null => false
    t.datetime "due_date",                       :null => false
    t.boolean  "done",        :default => false
  end

  create_table "deliverables", :force => true do |t|
    t.string   "title"
    t.integer  "thesis_id"
    t.string   "description"
    t.string   "file_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "meeting_notes", :force => true do |t|
    t.string   "note",       :null => false
    t.integer  "thesis_id",  :null => false
    t.integer  "meeting_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meetings", :force => true do |t|
    t.string   "title",      :null => false
    t.integer  "thesis_id",  :null => false
    t.date     "fecha",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recommendations", :force => true do |t|
    t.string   "recommendation"
    t.integer  "thesis_id"
    t.date     "created"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "sources", :force => true do |t|
    t.integer "thesis_id", :null => false
    t.string  "title",     :null => false
    t.text    "citation",  :null => false
    t.string  "url"
    t.text    "analysis"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "thesis_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "theses", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "teacher_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "state"
  end

end
