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

ActiveRecord::Schema.define(version: 2019_05_25_064628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compras", force: :cascade do |t|
    t.integer "Numero_tarjeta"
    t.string "Nombre_titular"
    t.string "Fecha_de_vencimiento_tarjeta"
    t.integer "Codigo_seguridad"
    t.integer "Numero_cuotas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Placa_asociada"
    t.integer "id_seguro"
  end

  create_table "polizas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seguros", force: :cascade do |t|
    t.string "Placa_del_vehiculo"
    t.string "Fecha_inicio_vigencia"
    t.string "Fecha_fin_vigencia"
    t.integer "Numero_pasajeros"
    t.integer "Cilindraje"
    t.string "Clase"
    t.integer "Toneladas"
    t.integer "Edad"
    t.string "Precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Numero_tarjeta"
    t.string "Nombre_titular"
    t.string "Fecha_de_vencimiento_tarjeta"
    t.integer "Codigo_tarjeta"
    t.integer "Numero_cuotas"
    t.string "Subtipo"
  end

  create_table "soatseguros", force: :cascade do |t|
    t.string "Placa"
    t.string "del"
    t.string "vehiculo"
    t.string "Fecha"
    t.string "inicio"
    t.string "vigencia"
    t.string "fin"
    t.string "Numero"
    t.integer "pasajeros"
    t.integer "Cilindraje"
    t.string "Clase"
    t.integer "Toneladas"
    t.integer "Edad"
    t.string "Precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "rol"
    t.string "email"
    t.string "Tipo_documento"
    t.integer "Numero_documento"
    t.string "Apellidos"
    t.integer "Telefono"
    t.string "sesionactiva"
  end

end
