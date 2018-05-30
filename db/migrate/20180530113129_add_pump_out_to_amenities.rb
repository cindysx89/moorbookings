class AddPumpOutToAmenities < ActiveRecord::Migration[5.2]
  def change
    add_column :amenities, :pump_out, :text
  end
end
