class AddColsToSeguro < ActiveRecord::Migration[5.2]
  def change
    add_column :seguros, :Numero_tarjeta, :int
    add_column :seguros, :Nombre_titular, :string
    add_column :seguros, :Fecha_de_vencimiento_tarjeta, :string
    add_column :seguros, :Codigo_tarjeta, :int
    add_column :seguros, :Numero_cuotas, :integer
  end
end
