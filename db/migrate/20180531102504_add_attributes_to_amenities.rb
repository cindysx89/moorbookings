class AddAttributesToAmenities < ActiveRecord::Migration[5.2]
  def change
    add_column :amenities, :elsan, :boolean
    add_column :amenities, :toilets, :boolean
  end
end
