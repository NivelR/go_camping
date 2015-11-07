class CreatePlaceFacilities < ActiveRecord::Migration
  def change
    create_table :place_facilities do |t|
      t.boolean :private_toilet
      t.boolean :private_shared_toilet
      t.boolean :hot_water
      t.boolean :fridge
      t.boolean :kitchen
      t.boolean :microwave
      t.boolean :parking
      t.boolean :boat_ramp
      t.boolean :barbecue_area
      t.boolean :grill_shed
      t.boolean :campfire_place
      t.boolean :swimming_pool
      t.boolean :sound_system
      t.string :other
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
