class ChangeDataTypeinMoorings < ActiveRecord::Migration[5.2]
  def change
    change_column :moorings, :latitude, :float
    change_column :moorings, :longitude, :float
  end
end
