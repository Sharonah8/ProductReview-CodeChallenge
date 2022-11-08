# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

Review.create(comment: 'Amazeballs', star_rating: 3, user_id: user1.id, product_id: product1.id)
Review.create(comment: 'Bazinga', star_rating: 5, user_id: user1.id, product_id: product1.id)
Review.create(comment: 'Fantamagorgeous', star_rating: 3, user_id: user1.id, product_id: product1.id)
Review.create(comment: 'Cocomelon', star_rating: 2, user_id: user1.id, product_id: product1.id)
Review.create(comment: 'Supercalifrag', star_rating: 5, user_id: user1.id, product_id: product1.id)


puts "Seeding done!"