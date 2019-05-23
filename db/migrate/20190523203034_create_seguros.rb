class CreateSeguros < ActiveRecord::Migration[5.2]
  def change
    create_table :seguros do |t|
      t.string :Placa_del_vehiculo
      t.string :Fecha_inicio_vigencia
      t.string :Fecha_fin_vigencia
      t.integer :Numero_pasajeros
      t.integer :Cilindraje
      t.string :Clase
      t.integer :Toneladas
      t.integer :Edad
      t.string :Precio

      t.timestamps
    end
  end
end
