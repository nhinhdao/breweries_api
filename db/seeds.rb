# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client' 
require 'json'

resp = RestClient.get("https://api.openbrewerydb.org/breweries?by_state=new_york&per_page=40")
response = JSON.parse(resp)
response.each do |place|
  Place.create! do |pl|
    pl.name = place["name"]
    pl.brewery_type = place["brewery_type"].capitalize
    if place["street"].length > 0 && place["city"].length > 0
      pl.address = "#{place["street"]}, #{place["city"]}, New York"
    elsif place["street"].length == 0 && place["city"].length > 0
      pl.address = "#{place["city"]}, New York"
    else
      pl.address = "New York"
    end
    pl.postal_code = place["postal_code"]
    pl.country = place["country"]
    pl.longitude = place["longitude"] ? place["longitude"].to_f : -73.935242
    pl.latitude = place["latitude"] ? place["latitude"].to_f : 40.730610
    pl.phone = place["phone"] ? place["phone"] : 'N/A'
    pl.website_url = place["website_url"] ? place["website_url"] : 'N/A'
  end
end