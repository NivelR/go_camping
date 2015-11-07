class CreatePlaceCosts < ActiveRecord::Migration
  def change
    create_table :place_costs do |t|
      t.string :regard
      t.decimal :price
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
