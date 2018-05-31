class ChangeDatatypeToBoolean < ActiveRecord::Migration[5.2]
  def change
    change_column :amenities, :elsan, "boolean USING elsan != 'false'"
    change_column_default :amenities, :elsan, false
    change_column :amenities, :toilets, "boolean USING toilets != 'false'"
    change_column_default :amenities, :toilets, false
  end
end
