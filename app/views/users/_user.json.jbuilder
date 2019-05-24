json.extract! user, :id, :username, :password, :rol, :email, :created_at, :updated_at, :Tipo_documento, :Numero_documento, :Apellidos, :Telefono, :sesionactiva
json.url user_url(user, format: :json)
