class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :latitude
      t.string :longitude
      t.string :feature_image

      t.timestamps null: false
    end
  end
end
