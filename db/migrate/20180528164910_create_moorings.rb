class CreateMoorings < ActiveRecord::Migration[5.2]
  def change
    create_table :moorings do |t|
      t.decimal :longitude
      t.decimal :latitude
      t.string :name
      t.string :picture
      t.timestamps
    end
  end
end
