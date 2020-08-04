class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.text :description
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
