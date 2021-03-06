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

ActiveRecord::Schema.define(:version => 20130606222014) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "colors", :force => true do |t|
    t.string  "nombre"
    t.integer "producto_id"
  end

  create_table "colors_productos", :id => false, :force => true do |t|
    t.integer "color_id"
    t.integer "producto_id"
  end

  add_index "colors_productos", ["color_id"], :name => "index_colors_productos_on_color_id"
  add_index "colors_productos", ["producto_id"], :name => "index_colors_productos_on_producto_id"

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "telefono"
    t.string   "direccion"
    t.text     "consulta"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fotos", :force => true do |t|
    t.integer  "producto_id"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "color_id"
  end

  create_table "marcas", :force => true do |t|
    t.string "nombre"
    t.text   "descripcion"
  end

  create_table "news", :force => true do |t|
    t.string   "titulo"
    t.text     "info"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "productos", :force => true do |t|
    t.integer  "codigo"
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "stock"
    t.float    "precio"
    t.integer  "marca_id"
    t.integer  "color_id"
    t.integer  "talle_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "productos_talles", :id => false, :force => true do |t|
    t.integer "producto_id"
    t.integer "talle_id"
  end

  add_index "productos_talles", ["producto_id"], :name => "index_productos_talles_on_producto_id"
  add_index "productos_talles", ["talle_id"], :name => "index_productos_talles_on_talle_id"

  create_table "talles", :force => true do |t|
    t.string  "nombre"
    t.integer "producto_id"
  end

end
