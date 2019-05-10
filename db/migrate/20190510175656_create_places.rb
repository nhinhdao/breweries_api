class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :brewery_type
      t.string :address
      t.string :postal_code
      t.string :country
      t.float :longitude
      t.float :latitude
      t.string :phone
      t.string :website_url
      t.integer :location_id
      t.timestamps
    end
  end
end
