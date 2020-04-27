# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

u = User.create(email: 'kreestoff@hotmail.com', password: 'password1')

2.times do
  g = GroceryList.create(title: Faker::Lorem.sentence(word_count: 2), user_id: u.id)
  5.times do
    Item.create(name: Faker::Food.fruits, note: Faker::Lorem.sentence, grocery_list_id: g.id)
  end
end
