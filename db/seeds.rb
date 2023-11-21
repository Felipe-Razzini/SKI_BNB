puts 'Cleaning database...'
Ski.destroy_all

puts 'Creating skis...'
atomic = { brand: 'Atomic', experience_level: 'Beginner', size: 169, daily_price: 40, location: "Zermatt, Switzerland" }
rossignol = { brand: 'Rossignol', experience_level: 'Beginner', size: 181, daily_price: 50, location: "Lech, Austria" }
lacroix = { brand: 'Lacroix', experience_level: 'Advanced', size: 198, daily_price: 80, location: "Alpes D'huez, France" }
salomon = { brand: 'Salomon', experience_level: 'Intermediate', size: 162, daily_price: 70, location: "Corvara, Italia" }
fischer = { brand: 'Fischer', experience_level: 'Intermediate', size: 188, daily_price: 70, location: "Whistler, Canada" }
crows = { brand: 'Black Crows', experience_level: 'Advanced', size: 184, daily_price: 72, location: "Zermatt, Switzerland" }


[atomic, rossignol, lacroix, salomon, fischer, crows].each do |attributes|
  ski = Ski.create!(attributes)
  puts "Created #{ski.brand}"
end
puts 'Finished!'
