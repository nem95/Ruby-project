class CreateMagasins < ActiveRecord::Migration[5.0]
  def change
    create_table :magasins do |t|
      t.string :chain
      t.string :name
      t.float :longitude
      t.float :latitude
      t.string :address
      t.string :city
      t.integer :zip
      t.integer :phone
      t.string :country_code
      t.timestamps
    end
  end
end
