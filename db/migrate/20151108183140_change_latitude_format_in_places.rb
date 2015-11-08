class ChangeLatitudeFormatInPlaces < ActiveRecord::Migration
  def change
    change_column :places, :latitude, :float
  end
end
