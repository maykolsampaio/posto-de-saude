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

ActiveRecord::Schema.define(version: 20131205203914) do

  create_table "comunicacaos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comunicacaos_pessoas", force: true do |t|
    t.integer  "comunicacao_id"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doencas", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doencas_pessoas", force: true do |t|
    t.integer  "doenca_id"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.string   "endereco"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cep"
    t.string   "municipio"
    t.integer  "segmento"
    t.integer  "area"
    t.integer  "micro_area"
    t.integer  "ficha"
    t.date     "data"
    t.string   "tipo_casa"
    t.integer  "comodos"
    t.string   "energia_eletrica"
    t.string   "destino_lixo"
    t.string   "tratamento_agua"
    t.string   "abastecimento_agua"
    t.string   "destino_fezes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_comunitarios", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupo_comunitarios_pessoas", force: true do |t|
    t.integer  "grupo_comunitario_id"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hiperdia", force: true do |t|
    t.string   "unidade"
    t.integer  "ano"
    t.string   "fumante"
    t.date     "visita_acs"
    t.string   "dieta"
    t.string   "medicacao"
    t.string   "exercicios"
    t.string   "pressao_arterial"
    t.date     "ultima_consulta"
    t.integer  "mes_id"
    t.text     "observacao"
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hiperdia", ["mes_id"], name: "index_hiperdia_on_mes_id", using: :btree
  add_index "hiperdia", ["pessoa_id"], name: "index_hiperdia_on_pessoa_id", using: :btree

  create_table "ocupacaos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.date     "data_nascimento"
    t.string   "sexo"
    t.string   "alfabetizado"
    t.string   "frequenta_escola"
    t.integer  "ocupacao_id"
    t.integer  "doenca_id"
    t.string   "nome_plano_de_saude"
    t.integer  "comunicacao_id"
    t.integer  "grupo_comunitario_id"
    t.integer  "transporte_id"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pessoas", ["comunicacao_id"], name: "index_pessoas_on_comunicacao_id", using: :btree
  add_index "pessoas", ["doenca_id"], name: "index_pessoas_on_doenca_id", using: :btree
  add_index "pessoas", ["ficha_id"], name: "index_pessoas_on_ficha_id", using: :btree
  add_index "pessoas", ["grupo_comunitario_id"], name: "index_pessoas_on_grupo_comunitario_id", using: :btree
  add_index "pessoas", ["ocupacao_id"], name: "index_pessoas_on_ocupacao_id", using: :btree
  add_index "pessoas", ["transporte_id"], name: "index_pessoas_on_transporte_id", using: :btree

  create_table "pessoas_transportes", force: true do |t|
    t.integer  "pessoa_id"
    t.integer  "transporte_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transportes", force: true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
