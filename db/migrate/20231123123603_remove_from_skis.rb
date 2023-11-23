class RemoveFromSkis < ActiveRecord::Migration[7.1]
  def change
    remove_column :skis, :latitude, :float
    remove_column :skis, :longitude, :float
  end
end
