class CreatePlaceSports < ActiveRecord::Migration
  def change
    create_table :place_sports do |t|
      t.boolean :ping_pong_table
      t.boolean :canoe
      t.boolean :soccer_field
      t.boolean :platform_tennis_court
      t.boolean :volleyball_court
      t.string :other
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
