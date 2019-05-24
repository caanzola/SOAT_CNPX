class CreateCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :compras do |t|
      t.integer :Numero_tarjeta
      t.string :Nombre_titular
      t.string :Fecha_de_vencimiento_tarjeta
      t.integer :Codigo_seguridad
      t.integer :Numero_cuotas

      t.timestamps
    end
  end
end
