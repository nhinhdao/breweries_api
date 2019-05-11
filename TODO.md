Back end API consists of brewery places in New York.

1. Build models for places:
  - Place has name, type, address, ...
  - Place has serializer method to generate json API

2. Fetch breweries using Rest Client and Json gem
  - gem 'rest-client'
  - gem 'json'

3. Seed return json to database and ready to be access from front end

  - Fetch API with above gems
  - Each object in the returned data will be used to create a place.

4. Routes for places:
  - Index: Places.all
  - Show: Place.find(:id)