json.extract! trabajadores_list, :id, :Nombres, :Apellidos, :created_at, :updated_at
json.url trabajadores_list_url(trabajadores_list, format: :json)
