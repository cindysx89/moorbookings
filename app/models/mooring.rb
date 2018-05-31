class Mooring < ApplicationRecord
  has_many :bookings

  validates :longitude, presence: true
  validates :latitude, presence: :true
  mount_uploader :photo, PhotoUploader


end
