class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :user_id
      t.string :ski_id
      t.integer :start_date
      t.integer :end_date
      t.integer :total_price

      t.timestamps
    end
  end
end
