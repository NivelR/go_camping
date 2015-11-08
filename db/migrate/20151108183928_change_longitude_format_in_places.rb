class ChangeLongitudeFormatInPlaces < ActiveRecord::Migration
  def change
    change_column :places, :longitude, :float
  end
end
