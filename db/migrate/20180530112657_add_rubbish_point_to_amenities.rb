class AddRubbishPointToAmenities < ActiveRecord::Migration[5.2]
  def change
    add_column :amenities, :rubbish_point, :text
  end
end
