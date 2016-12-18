json.extract! magasin, :id, :chain, :name, :longitude, :latitude, :address, :city, :zip, :phone, :country_code, :created_at, :updated_at
json.url magasin_url(magasin, format: :json)