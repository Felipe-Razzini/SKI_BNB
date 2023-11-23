class Booking < ApplicationRecord
  belongs_to :ski
  belongs_to :user

  validates :start_date, :end_date, presence: true
end
