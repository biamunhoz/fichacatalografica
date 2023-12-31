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

ActiveRecord::Schema.define(version: 2023_07_12_192138) do

  create_table "fichas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome"
    t.string "sobrenome"
    t.string "titulo"
    t.string "tipotrabalho"
    t.string "nomeorient"
    t.string "sobrenomeorient"
    t.string "nomecoorient"
    t.string "sobrenomecoorient"
    t.string "ano"
    t.string "numpagina"
    t.string "assunto1"
    t.string "assunto2"
    t.string "assunto3"
    t.string "assunto4"
    t.string "assunto5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "orientadora", default: false
    t.boolean "coorientadora", default: false
  end

end
