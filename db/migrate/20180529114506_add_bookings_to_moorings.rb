class AddBookingsToMoorings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :mooring, foreign_key: true
  end
end
