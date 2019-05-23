class CreateSoatseguros < ActiveRecord::Migration[5.2]
  def change
    create_table :soatseguros do |t|
      t.string :Placa
      t.string :del
      t.string :vehiculo
      t.string :Fecha
      t.string :inicio
      t.string :vigencia
      t.string :Fecha
      t.string :fin
      t.string :vigencia
      t.string :Numero
      t.integer :pasajeros
      t.integer :Cilindraje
      t.string :Clase
      t.integer :Toneladas
      t.integer :Edad
      t.string :Precio

      t.timestamps
    end
  end
end
