class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user
      t.references :mooring
      t.timestamps
    end
  end
end
