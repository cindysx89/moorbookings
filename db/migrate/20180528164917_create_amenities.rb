class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.string :picture
      t.decimal :longitude
      t.decimal :latitude
      t.string :contact
      t.timestamps
    end
  end
end
