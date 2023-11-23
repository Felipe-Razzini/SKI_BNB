class AddPhotToSkis < ActiveRecord::Migration[7.1]
  def change
    add_column :skis, :photo, :string
  end
end
