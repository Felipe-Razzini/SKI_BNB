puts 'Cleaning database...'
User.destroy_all
Ski.destroy_all

puts 'Creating users and skis...'

user1 = User.create!(email: 'test@test3.com', password: '123123')
user2 = User.create!(email: 'test@test2.com', password: '123ed23')
user3 = User.create!(email: 'test@test1.com', password: '12ss23')

# [user1, user2, user3].each do |attributes|
#   user = User.create!(attributes)
#   puts "Created #{user.email}"
# end

atomic = { brand: 'Atomic', experience_level: 'Beginner', size: 169, daily_price: 40, location: "Zermatt, Switzerland", user_id: user1.id }
rossignol = { brand: 'Rossignol', experience_level: 'Beginner', size: 181, daily_price: 50, location: "Lech, Austria", user_id: user2.id}
lacroix = { brand: 'Lacroix', experience_level: 'Advanced', size: 198, daily_price: 80, location: "Alpes D'huez, France", user_id: user3.id}
salomon = { brand: 'Salomon', experience_level: 'Intermediate', size: 162, daily_price: 70, location: "Corvara, Italia", user_id: user1.id}
fischer = { brand: 'Fischer', experience_level: 'Intermediate', size: 188, daily_price: 70, location: "Whistler, Canada", user_id: user2.id}
crows = { brand: 'Black Crows', experience_level: 'Advanced', size: 184, daily_price: 72, location: "Zermatt, Switzerland", user_id: user3.id}

[atomic, rossignol, lacroix, salomon, fischer, crows].each do |attributes|
  ski = Ski.create!(attributes)
  puts "Created #{ski.brand}"
end
puts 'Finished!'
