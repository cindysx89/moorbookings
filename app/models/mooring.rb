class Mooring < ApplicationRecord
  has_many :bookings

  validates :longitude, presence: true
  validates :latitude, presence: :true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
