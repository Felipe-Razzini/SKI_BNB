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

# atomic = { brand: 'Atomic', experience_level: 'Beginner', size: 169, daily_price: 40, location: "Zermatt, Switzerland", user_id: user1.id}
# rossignol = { brand: 'Rossignol', experience_level: 'Beginner', size: 181, daily_price: 50, location: "Lech, Austria", user_id: user2.id}
# lacroix = { brand: 'Lacroix', experience_level: 'Advanced', size: 198, daily_price: 80, location: "Alpes D'huez, France", user_id: user3.id}
# salomon = { brand: 'Salomon', experience_level: 'Intermediate', size: 162, daily_price: 70, location: "Corvara, Italia", user_id: user1.id}
# fischer = { brand: 'Fischer', experience_level: 'Intermediate', size: 188, daily_price: 70, location: "Whistler, Canada", user_id: user2.id}
# crows = { brand: 'Black Crows', experience_level: 'Advanced', size: 184, daily_price: 72, location: "Zermatt, Switzerland", user_id: user3.id}

# [atomic, rossignol, lacroix, salomon, fischer, crows].each do |attributes|
#   ski = Ski.create!(attributes)
#   puts "Created #{ski.brand}"
# end




require "open-uri"

file = URI.open("https://www.tradeinn.com/f/14026/140265672/atomic-redster-s7-rp-m-12-gw-alpine-skis.jpg")
ski = Ski.new(brand: 'Atomic', experience_level: 'Beginner', size: 169, daily_price: 40, location: "Zermatt, Switzerland", user_id: user1.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://www.xspo.nl/media/image/7f/8a/02/22_hero-elite-st-ti-konect_RALPH01.jpg")
ski = Ski.new(brand: 'Rossignol', experience_level: 'Beginner', size: 181, daily_price: 50, location: "Lech, Austria", user_id: user2.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://img1.sportconcept.com/backend_nou/content/images/ski-second-lxr--20160930142149.jpg")
ski = Ski.new(brand: 'Lacroix', experience_level: 'Advanced', size: 198, daily_price: 80, location: "Alpes D'huez, France", user_id: user3.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://skiboards.com/wp-content/uploads/2017/09/Skiboards-salomon-savor125-21.png")
ski = Ski.new(brand: 'Salomon', experience_level: 'Intermediate', size: 162, daily_price: 70, location: "Corvara, Italia", user_id: user1.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://static.sport-conrad.com/out/pictures/master/product/1/184052_706_003_59.jpg")
ski = Ski.new(  brand: 'Black Crows', experience_level: 'Advanced', size: 184, daily_price: 72, location: "Zermatt, Switzerland", user_id: user3.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://www.tradeinn.com/f/14026/140265672/atomic-redster-s7-rp-m-12-gw-alpine-skis.jpg")
ski = Ski.new(brand: 'Atomic', experience_level: 'Beginner', size: 169, daily_price: 40, location: "Zermatt, Switzerland", user_id: user1.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://www.xspo.nl/media/image/7f/8a/02/22_hero-elite-st-ti-konect_RALPH01.jpg")
ski = Ski.new(brand: 'Rossignol', experience_level: 'Beginner', size: 181, daily_price: 50, location: "Lech, Austria", user_id: user2.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://img1.sportconcept.com/backend_nou/content/images/ski-second-lxr--20160930142149.jpg")
ski = Ski.new(brand: 'Lacroix', experience_level: 'Advanced', size: 198, daily_price: 80, location: "Alpes D'huez, France", user_id: user3.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://skiboards.com/wp-content/uploads/2017/09/Skiboards-salomon-savor125-21.png")
ski = Ski.new(brand: 'Salomon', experience_level: 'Intermediate', size: 162, daily_price: 70, location: "Corvara, Italia", user_id: user1.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

file = URI.open("https://static.sport-conrad.com/out/pictures/master/product/1/184052_706_003_59.jpg")
ski = Ski.new(  brand: 'Black Crows', experience_level: 'Advanced', size: 184, daily_price: 72, location: "Zermatt, Switzerland", user_id: user3.id)
ski.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ski.save
puts "Created #{ski.brand}"

puts 'Finished!'
