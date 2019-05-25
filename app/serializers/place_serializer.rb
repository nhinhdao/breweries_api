class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :code, :name, :brewery_type, :address, :postal_code, :country, :longitude, :latitude, :phone, :website_url
  # belongs_to :location
end
