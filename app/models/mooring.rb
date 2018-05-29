class Mooring < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :longitude, presence: true, :latitude, presence: :true
end
