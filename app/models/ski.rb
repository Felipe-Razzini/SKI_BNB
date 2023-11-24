class Ski < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :brand,:experience_level,:size,:daily_price,:location, presence: true
  validates :size, numericality: { only_integer: true }
  validates :size,numericality: { in: 50..200 }
  validates :daily_price, numericality: {:greater_than => 0}

  geocoded_by :location
  after_validation :geocode


  include PgSearch::Model
  pg_search_scope :search_by_brand_and_experience_level,
  against: [ :brand, :experience_level],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
