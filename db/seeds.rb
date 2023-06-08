puts "🌱 Seeding spices..."

# Seed your database here
puts "creating books..."
Book.create(name: "Meshack", author: "Ezra", quantity: "500", price: "1100" )
Book.create(name: "Mathew", author: "Rebbecca", quantity: "600", price: "1200" )
Book.create(name: "Andrew", author: "Salima", quantity: "700", price: "1300" )
Book.create(name: "Sammy", author: "Tate", quantity: "800", price: "1400" )
Book.create(name: "Dennis", author: "Felix", quantity: "900", price: "1500" )
Book.create(name: "Brian", author: "Stephen", quantity: "100", price: "1000" )

puts "✅ Done seeding!"
