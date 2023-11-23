class Booking < ApplicationRecord
  belongs_to :ski

  validates :start_date, :end_date, presence: true
end
