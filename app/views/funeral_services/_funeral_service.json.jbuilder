json.extract! funeral_service, :id, :service_id, :name, :description, :price, :created_at, :updated_at
json.url funeral_service_url(funeral_service, format: :json)
