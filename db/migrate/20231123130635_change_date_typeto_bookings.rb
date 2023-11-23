class ChangeDateTypetoBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, start_date: :date
    change_column :bookings, end_date: :date
  end
end
