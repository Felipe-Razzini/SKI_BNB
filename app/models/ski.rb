class Ski < ApplicationRecord
  belongs_to :user
  # has_many :bookings, dependent: :destroy
  geocoded_by :location
  after_validation :geocode
end
