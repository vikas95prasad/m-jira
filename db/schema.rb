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

ActiveRecord::Schema.define(version: 2019_04_09_180900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.bigint "owner_id"
    t.string "name"
    t.text "description"
    t.date "due_date"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_projects_on_owner_id"
  end

  create_table "todos", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "owner_id"
    t.string "title"
    t.text "description"
    t.date "due_date"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_todos_on_owner_id"
    t.index ["project_id"], name: "index_todos_on_project_id"
  end

  create_table "user_projects", force: :cascade do |t|
    t.bigint "collaborator_id"
    t.bigint "collaboration_project_id"
    t.index ["collaboration_project_id"], name: "index_user_projects_on_collaboration_project_id"
    t.index ["collaborator_id"], name: "index_user_projects_on_collaborator_id"
  end

  create_table "user_todos", force: :cascade do |t|
    t.bigint "assigned_user_id"
    t.bigint "assigned_todo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assigned_todo_id"], name: "index_user_todos_on_assigned_todo_id"
    t.index ["assigned_user_id"], name: "index_user_todos_on_assigned_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
