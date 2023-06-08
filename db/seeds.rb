puts "🌱 Seeding spices..."

# Seed your database here
puts "creating books..."
Book.create(name: "Blossoms of Savannah", author: "Ezra", quantity: "500", price: "1100" )
Book.create(name: "Be Back Shortly", author: "Rebbecca", quantity: "600", price: "1200" )
Book.create(name: "One in a million", author: "Salima", quantity: "700", price: "1300" )
Book.create(name: "Kidagaa", author: "Tate", quantity: "800", price: "1400" )
Book.create(name: "Damu nyeusi", author: "Felix", quantity: "900", price: "1500" )
Book.create(name: "Walking Dead", author: "Stephen", quantity: "100", price: "1000" )

puts "creating users...."
User.create(name: "Meshack", user_id: "1000", age: "21")
User.create(name: "Mathew", user_id: "900", age: "20")
User.create(name: "Brian", user_id: "700", age: "22")
User.create(name: "Cynthia", user_id: "290", age: "19")
User.create(name: "Collins", user_id: "555", age: "15")
User.create(name: "Dom", user_id: "899", age: "31")
puts "✅ Done seeding!"
