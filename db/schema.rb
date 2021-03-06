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

ActiveRecord::Schema.define(version: 20220509225658) do

  create_table "aberturas", force: :cascade do |t|
    t.float    "valor"
    t.integer  "user_id"
    t.integer  "caixa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caixa_id"], name: "index_aberturas_on_caixa_id"
    t.index ["user_id"], name: "index_aberturas_on_user_id"
  end

  create_table "caixas", force: :cascade do |t|
    t.boolean  "aberto",            default: false
    t.integer  "estacionamento_id"
    t.float    "saldo"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["estacionamento_id"], name: "index_caixas_on_estacionamento_id"
  end

  create_table "debites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "estacionamento_id"
    t.integer  "caixa_id"
    t.integer  "valor"
    t.text     "motivo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["caixa_id"], name: "index_debites_on_caixa_id"
    t.index ["estacionamento_id"], name: "index_debites_on_estacionamento_id"
    t.index ["user_id"], name: "index_debites_on_user_id"
  end

  create_table "estacionamentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "preco_vaga"
    t.float    "taxa"
  end

  create_table "fechamentos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "caixa_id"
    t.float    "valor"
    t.text     "obs"
    t.float    "valor_anterior"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["caixa_id"], name: "index_fechamentos_on_caixa_id"
    t.index ["user_id"], name: "index_fechamentos_on_user_id"
  end

  create_table "locacaos", force: :cascade do |t|
    t.string   "placa"
    t.integer  "vaga_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time     "entrada"
    t.time     "saida"
    t.index ["vaga_id"], name: "index_locacaos_on_vaga_id"
  end

  create_table "sangria", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "estacionamento_id"
    t.integer  "caixa_id"
    t.integer  "valor"
    t.text     "motivo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["caixa_id"], name: "index_sangria_on_caixa_id"
    t.index ["estacionamento_id"], name: "index_sangria_on_estacionamento_id"
    t.index ["user_id"], name: "index_sangria_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "funcao",                 default: 2
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vagas", force: :cascade do |t|
    t.integer  "estacionamento_id"
    t.boolean  "disponibilidade",   default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["estacionamento_id"], name: "index_vagas_on_estacionamento_id"
  end

  create_table "vendas", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "caixa_id"
    t.float    "valor"
    t.integer  "tipo_pagamento"
    t.integer  "locacao_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["caixa_id"], name: "index_vendas_on_caixa_id"
    t.index ["locacao_id"], name: "index_vendas_on_locacao_id"
    t.index ["user_id"], name: "index_vendas_on_user_id"
  end

end
