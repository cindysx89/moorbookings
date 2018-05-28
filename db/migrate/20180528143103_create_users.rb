class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :licence_number
      t.string :email
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
