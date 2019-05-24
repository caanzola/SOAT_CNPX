json.extract! compra, :id, :Numero_tarjeta, :Nombre_titular, :Fecha_de_vencimiento_tarjeta, :Codigo_seguridad, :Numero_cuotas, :created_at, :updated_at, :Placa_asociada, :id_seguro
json.url compra_url(compra, format: :json)
