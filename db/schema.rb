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

ActiveRecord::Schema.define(version: 20160517195904) do

  create_table "abouts", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "subtitle",            limit: 255
    t.text     "content",             limit: 65535
    t.string   "banner_file_name",    limit: 255
    t.string   "banner_content_type", limit: 255
    t.integer  "banner_file_size",    limit: 4
    t.datetime "banner_updated_at"
    t.string   "video",               limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "address",    limit: 255
    t.integer  "number",     limit: 4
    t.string   "complement", limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.string   "phone",      limit: 255
    t.integer  "mobile",     limit: 4
    t.string   "zipcode",    limit: 255
    t.string   "latitude",   limit: 255
    t.string   "longitude",  limit: 255
    t.integer  "store_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "advertisings", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "url",                limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "cases", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "content",            limit: 65535
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "content",            limit: 65535
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
    t.string   "url",               limit: 255
    t.text     "content",           limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.string   "subject",    limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customercares", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "subtitle",          limit: 255
    t.text     "content",           limit: 65535
    t.string   "file_file_name",    limit: 255
    t.string   "file_content_type", limit: 255
    t.integer  "file_file_size",    limit: 4
    t.datetime "file_updated_at"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "content",            limit: 65535
    t.text     "target",             limit: 65535
    t.date     "start"
    t.date     "end"
    t.text     "local",              limit: 65535
    t.string   "url",                limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "question",   limit: 255
    t.string   "answer",     limit: 255
    t.integer  "order",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "subtitle",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "galleryelements", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "gallery_id",         limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "galleryelements", ["gallery_id"], name: "index_galleryelements_on_gallery_id", using: :btree

  create_table "mediaboxes", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.integer  "order",              limit: 4
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "url",                limit: 255
    t.boolean  "externalUrl"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "my_admin_configurations", force: :cascade do |t|
    t.string   "key",        limit: 255
    t.string   "name",       limit: 255
    t.string   "field_type", limit: 255
    t.string   "hint",       limit: 255
    t.text     "value",      limit: 65535
    t.boolean  "required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_admin_group_permissions", force: :cascade do |t|
    t.integer  "permission_id", limit: 4
    t.integer  "group_id",      limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_group_permissions", ["permission_id", "group_id"], name: "my_admin_group_permissions_index", unique: true, using: :btree

  create_table "my_admin_groups", force: :cascade do |t|
    t.string   "name",        limit: 30,    null: false
    t.text     "description", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_groups", ["name"], name: "index_my_admin_groups_on_name", unique: true, using: :btree

  create_table "my_admin_locales", force: :cascade do |t|
    t.string   "name",       limit: 128
    t.string   "acronym",    limit: 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_locales", ["acronym"], name: "index_my_admin_locales_on_acronym", unique: true, using: :btree
  add_index "my_admin_locales", ["name"], name: "index_my_admin_locales_on_name", unique: true, using: :btree

  create_table "my_admin_logs", force: :cascade do |t|
    t.integer  "user_id",     limit: 4,   null: false
    t.string   "object",      limit: 255, null: false
    t.string   "action",      limit: 255, null: false
    t.string   "model",       limit: 255, null: false
    t.string   "application", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_logs", ["user_id"], name: "index_my_admin_logs_on_user_id", using: :btree

  create_table "my_admin_permissions", force: :cascade do |t|
    t.string   "model",       limit: 75, null: false
    t.string   "name",        limit: 75, null: false
    t.string   "application", limit: 75, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_admin_user_groups", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "group_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "my_admin_user_groups", ["user_id", "group_id"], name: "my_admin_user_groups_index", unique: true, using: :btree

  create_table "my_admin_users", force: :cascade do |t|
    t.string   "first_name",         limit: 255, default: "",    null: false
    t.string   "last_name",          limit: 255, default: "",    null: false
    t.string   "username",           limit: 255, default: "",    null: false
    t.boolean  "superuser",                      default: false, null: false
    t.string   "email",              limit: 255,                 null: false
    t.boolean  "active",                         default: true,  null: false
    t.string   "salt",               limit: 255,                 null: false
    t.string   "encrypted_password", limit: 255,                 null: false
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.string   "encrypted_recover",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "content",            limit: 65535
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "born",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.text     "content",            limit: 65535
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "content",            limit: 65535
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "socials", force: :cascade do |t|
    t.string   "facebook",   limit: 255
    t.string   "instagram",  limit: 255
    t.string   "google",     limit: 255
    t.string   "pinterest",  limit: 255
    t.string   "snapchat",   limit: 255
    t.string   "twitter",    limit: 255
    t.string   "foursquare", limit: 255
    t.string   "slideshare", limit: 255
    t.integer  "store_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "url",                limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.string   "subtitle",           limit: 255
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "phone",              limit: 4
    t.string   "openingWeek",        limit: 255
    t.string   "closingWeek",        limit: 255
    t.string   "openingWeekend",     limit: 255
    t.string   "closingWeekend",     limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "tag_products", force: :cascade do |t|
    t.integer  "tag_id",     limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "subtitle",   limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "galleryelements", "galleries"
end
