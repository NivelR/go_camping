class CreatePlaceNears < ActiveRecord::Migration
  def change
    create_table :place_nears do |t|
      t.boolean :kiosk
      t.boolean :disco
      t.boolean :beach
      t.boolean :national_park
      t.string :other
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
