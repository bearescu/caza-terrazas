class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :tag
      t.boolean :check

      t.timestamps
    end
  end
end
