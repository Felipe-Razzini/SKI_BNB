class CreateSkis < ActiveRecord::Migration[7.1]
  def change
    create_table :skis do |t|
      t.string :brand
      t.string :experience_level
      t.integer :size
      t.integer :daily_price
      t.integer :user_id

      t.timestamps
    end
  end
end
