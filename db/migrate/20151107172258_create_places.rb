class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.string :country
      t.string :state
      t.string :latitude
      t.string :longitude
      t.string :feature_image
      t.boolean :vacancy

      t.timestamps null: false
    end
  end
end
