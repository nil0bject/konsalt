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

ActiveRecord::Schema.define(:version => 20120225062159) do

  create_table "correspondence_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "correspondences", :force => true do |t|
    t.date     "date_received"
    t.integer  "project_id"
    t.integer  "correspondence_type_id"
    t.integer  "representative_id"
    t.integer  "stakeholder_id"
    t.string   "subject"
    t.text     "comment"
    t.integer  "risk_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "correspondences", ["correspondence_type_id"], :name => "index_correspondences_on_correspondence_type_id"
  add_index "correspondences", ["representative_id"], :name => "index_correspondences_on_representative_id"
  add_index "correspondences", ["risk_id"], :name => "index_correspondences_on_risk_id"
  add_index "correspondences", ["stakeholder_id"], :name => "index_correspondences_on_stakeholder_id"

  create_table "projects", :force => true do |t|
    t.string   "number"
    t.string   "name"
    t.string   "state"
    t.string   "region"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects_representatives", :force => true do |t|
    t.integer  "project_id"
    t.integer  "representative_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "representatives", :force => true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.integer  "stakeholder_id"
    t.string   "mobile"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "representatives", ["stakeholder_id"], :name => "index_representatives_on_stakeholder_id"

  create_table "risks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "staffs", :force => true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "phone"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stakeholders", :force => true do |t|
    t.string   "organisation"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "post_address1"
    t.string   "post_address2"
    t.string   "post_address3"
    t.string   "post_suburb"
    t.string   "post_state"
    t.string   "post_postcode"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "fax"
    t.string   "email"
    t.string   "website"
    t.text     "notes"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
