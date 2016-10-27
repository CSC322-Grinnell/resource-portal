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

<<<<<<< acacef6ea23d6ab94b048f81fa1f8837336a8ae4
<<<<<<< 5a237ce32080286f91c2e392f049f275431d018e
ActiveRecord::Schema.define(version: 20160427034802) do
=======
ActiveRecord::Schema.define(version: 20160225205345) do
>>>>>>> Add CanCan roles to user
=======
ActiveRecord::Schema.define(version: 20161007181019) do
>>>>>>> Can now invite admins to portal

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_resources", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "category_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "alternative_address"
    t.string   "phone_number"
    t.string   "alternative_phone_number"
    t.string   "website"
    t.string   "fax_number"
    t.string   "contact_email"
    t.string   "agency_email"
    t.text     "description_of_service"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "status"
    t.string   "name_of_submitter"
    t.string   "reviewer_name"
    t.time     "date_reviewed"
    t.text     "reviewer_comment"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["context"], name: "index_taggings_on_context"
  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  add_index "taggings", ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id"
  add_index "taggings", ["taggable_type"], name: "index_taggings_on_taggable_type"
  add_index "taggings", ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
  add_index "taggings", ["tagger_id"], name: "index_taggings_on_tagger_id"

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
<<<<<<< HEAD
<<<<<<< acacef6ea23d6ab94b048f81fa1f8837336a8ae4
<<<<<<< 900921b2374b1a77dfd4ccd61c8698c56ec0ac04
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "role",                   default: "default"
=======
<<<<<<< 7bb1096dcaed6cae7a74eb0bca662595177bd767
>>>>>>> Add CanCan roles to user
=======
<<<<<<< HEAD
<<<<<<< 7bb1096dcaed6cae7a74eb0bca662595177bd767
>>>>>>> 1a89b8d485f789bed4f7c2036a4921aac1af1902
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
=======
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
>>>>>>> Can now invite admins to portal
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
<<<<<<< HEAD
<<<<<<< acacef6ea23d6ab94b048f81fa1f8837336a8ae4
=======
>>>>>>> 1a89b8d485f789bed4f7c2036a4921aac1af1902
=======
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "role",                   default: "default"
>>>>>>> Add CanCan roles to user
=======
<<<<<<< HEAD
    t.string   "role",                   default: "default"
>>>>>>> Can now invite admins to portal
=======
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "role",                   default: "default"
>>>>>>> 8bd7376a1baf2393c3f910b55cb50eba8a72d401
>>>>>>> 1a89b8d485f789bed4f7c2036a4921aac1af1902
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
