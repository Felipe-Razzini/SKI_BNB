# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
create_table "skis", force: :cascade do |t|
  t.string "brand"
  t.string "experience_level"
  t.integer "size"
  t.integer "daily_price"
  t.integer "user_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.string "location"

  puts 'Cleaning database...'
  Ski.destroy_all

  puts 'Creating skis...'
  atomic = { brand: 'Atomic', experience_level: 'Beginner', phone_number: '+55 11 2305-2200', category: 'italian' }
  rossignol = { brand: 'Rossignol', experience_level: 'Beginner', phone_number: '+31 6 20 40 60', category: 'chinese' }
  lacroix = { brand: 'Lacroix', experience_level: 'Advanced', phone_number: '+31 6 50 60 70', category: 'belgian' }
  salomon = { brand: 'Salomon', experience_level: 'Intermediate', phone_number: '+55 11 2495-3431', category: 'french' }
  fischer = { brand: 'Fischer', experience_level: 'R. Iaiá, 83, São Paulo', phone_number: '+55 11 2339-2072', category: 'japanese' }

  [z_deli, otemba, chun, entrecote, kitchin].each do |attributes|
    restaurant = Restaurant.create!(attributes)
    puts "Created #{restaurant.name}"
  end
  puts 'Finished!'
