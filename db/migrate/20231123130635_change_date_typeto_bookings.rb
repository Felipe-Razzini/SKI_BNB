class ChangeDateTypetoBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :start_date, :integer
    remove_column :bookings, :end_date, :integer
  end
end
