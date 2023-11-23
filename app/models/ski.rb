class Ski < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :brand,:experience_level,:size,:daily_price,:location, presence: true
  validates :size, numericality: { only_integer: true }
  validates :size,numericality: { in: 50..200 }
  validates :daily_price, numericality: {:greater_than => 0}


end
