class CreateLocationCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :location_categories do |t|
      t.belongs_to :location
      t.belongs_to :category
      t.timestamps
    end
  end
end
