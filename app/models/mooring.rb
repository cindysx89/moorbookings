class Mooring < ApplicationRecord
  has_many :bookings
  # belongs_to :user
  validates :longitude, :latitude, presence: :true
end
