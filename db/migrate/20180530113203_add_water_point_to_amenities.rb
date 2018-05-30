class AddWaterPointToAmenities < ActiveRecord::Migration[5.2]
  def change
    add_column :amenities, :water_point, :text
  end
end
