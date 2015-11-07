class CreatePlaceServices < ActiveRecord::Migration
  def change
    create_table :place_services do |t|
      t.boolean :dry_cleaning
      t.string :public_transport
      t.string :other
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
