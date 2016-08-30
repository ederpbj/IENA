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

ActiveRecord::Schema.define(version: 20160829224609) do

  create_table "atividades", force: :cascade do |t|
    t.integer  "id_atividade"
    t.boolean  "encontro"
    t.boolean  "batismo"
    t.boolean  "ccc"
    t.boolean  "ctl"
    t.boolean  "casado_a"
    t.boolean  "dizimista"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "celulas", force: :cascade do |t|
    t.integer  "id_celula"
    t.string   "nome"
    t.date     "data_iniciada"
    t.string   "endereco"
    t.integer  "anfitriao_id"
    t.integer  "membro_id"
    t.date     "dia"
    t.string   "cep"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["anfitriao_id"], name: "index_celulas_on_anfitriao_id"
    t.index ["membro_id"], name: "index_celulas_on_membro_id"
  end

  create_table "lider_treinamentos", force: :cascade do |t|
    t.integer  "id_lider_treinamento"
    t.integer  "membro_id"
    t.integer  "celula_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["celula_id"], name: "index_lider_treinamentos_on_celula_id"
    t.index ["membro_id"], name: "index_lider_treinamentos_on_membro_id"
  end

  create_table "membros", force: :cascade do |t|
    t.integer  "id_membro"
    t.string   "nome"
    t.date     "data_aniversario"
    t.integer  "tipo_id"
    t.string   "endereco"
    t.string   "cep"
    t.string   "telefone"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["tipo_id"], name: "index_membros_on_tipo_id"
  end

  create_table "pontos", force: :cascade do |t|
    t.integer  "id_frequencia"
    t.integer  "celula_id"
    t.date     "data"
    t.integer  "membro_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["celula_id"], name: "index_pontos_on_celula_id"
    t.index ["membro_id"], name: "index_pontos_on_membro_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.integer  "id_tipo"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
