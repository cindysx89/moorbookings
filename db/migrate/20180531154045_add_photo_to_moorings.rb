class AddPhotoToMoorings < ActiveRecord::Migration[5.2]
  def change
    add_column :moorings, :photo, :string
  end
end
