class AddLocationtoSkis < ActiveRecord::Migration[7.1]
  def change
    add_column :skis, :location, :string
  end
end
