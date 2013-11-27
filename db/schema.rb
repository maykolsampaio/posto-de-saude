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

ActiveRecord::Schema.define(version: 20131107193239) do

  create_table "acs", force: true do |t|
    t.string   "nome"
    t.integer  "sinan"
    t.string   "endereco"
    t.integer  "idade"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fator_riscos", force: true do |t|
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.integer  "codigo"
    t.string   "endereco"
    t.integer  "numero"
    t.string   "bairro"
    t.integer  "cep"
    t.string   "municipio"
    t.integer  "segmento"
    t.integer  "area"
    t.integer  "microarea"
    t.date     "data"
    t.string   "tipocasa"
    t.integer  "comodos"
    t.string   "energia_eletrica"
    t.string   "destino_lixo"
    t.string   "tratamento_agua"
    t.string   "abastecimento_agua"
    t.string   "destino_fezes_urina"
    t.string   "plano_saude"
    t.integer  "pessoas_plano"
    t.string   "nome_plano"
    t.string   "caso_doenca"
    t.string   "meio_comunicacao"
    t.string   "participa_cooperativa"
    t.string   "participa_grupo_religioso"
    t.string   "transporte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gestacaos", force: true do |t|
    t.string   "mes"
    t.string   "estado_nutricional"
    t.date     "pre_natal"
    t.date     "visita_acs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gestantes", force: true do |t|
    t.integer  "ano"
    t.string   "nome"
    t.string   "endereco"
    t.date     "ultima_regra"
    t.date     "parto"
    t.date     "vacina1"
    t.date     "vacina2"
    t.date     "vacina3"
    t.date     "vacinaR"
    t.date     "puerperio1"
    t.date     "puerperio2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hiperdia", force: true do |t|
    t.integer  "numero_da_familia"
    t.integer  "ano"
    t.string   "fumante"
    t.date     "data_da_visita"
    t.string   "dieta"
    t.string   "toma_medicacao"
    t.string   "exercicios_fisicos"
    t.string   "pa"
    t.string   "licemia"
    t.string   "insulina"
    t.string   "hipoglicemiante_oral"
    t.date     "data_da_ultima_consulta"
    t.string   "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.date     "data_de_nascimento"
    t.integer  "idade"
    t.string   "sexo"
    t.string   "alfabetizado_ou_na_escola"
    t.string   "ocupacao"
    t.string   "doenca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resultado_gestacaos", force: true do |t|
    t.string   "nv"
    t.string   "nm"
    t.string   "ab"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuberculoses", force: true do |t|
    t.integer  "ano"
    t.date     "data_da_visita"
    t.string   "reacoes_indesejaveis"
    t.date     "data_da_ultima_consulta"
    t.string   "exame_escarro"
    t.integer  "comunicantes_examinados"
    t.integer  "bcg_menor_cinco_anos"
    t.integer  "comunicantes_existentes"
    t.integer  "comunicantes_menor_cinco_anos"
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
