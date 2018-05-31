class ChangeAttributesToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :amenities, :latitude, :float
    change_column :amenities, :longitude, :float
    change_column :amenities, :rubbish_point, "boolean USING rubbish_point != 'false'"
    change_column_default :amenities, :rubbish_point, false
    change_column :amenities, :pump_out, "boolean USING pump_out != 'false'"
    change_column_default :amenities, :pump_out, false
    change_column :amenities, :water_point, "boolean USING water_point != 'false'"
    change_column_default :amenities, :water_point, false
  end
end
