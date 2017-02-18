# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

game = Game.create(name: "Wants and Needs")

category_one = Category.create(name: "Bonus", game: game)
category_two = Category.create(name: "Books", game: game)
category_three = Category.create(name: "Food", game: game)
category_four = Category.create(name: "Drinks", game: game)
category_five = Category.create(name: "Clothing", game: game)
category_six = Category.create(name: "Bonus", game: game)

Answer.create(content: "Ugg Boots", category: category_one)
Answer.create(content: "iPhone", category: category_one)
Answer.create(content: "Socks", category: category_one)
Answer.create(content: "Potato Chips", category: category_one)
Answer.create(content: "Shirts", category: category_one)

Answer.create(content: "Dictionary", category: category_two)
Answer.create(content: "Text Book", category: category_two)
Answer.create(content: "Coloring Book", category: category_two)
Answer.create(content: "Magazine", category: category_two)
Answer.create(content: "Recipe Book", category: category_two)

Answer.create(content: "Ice Cream", category: category_three)
Answer.create(content: "Fruits", category: category_three)
Answer.create(content: "Pop Tarts", category: category_three)
Answer.create(content: "Cookies", category: category_three)
Answer.create(content: "Vegetables", category: category_three)

Answer.create(content: "Milk Shake", category: category_four)
Answer.create(content: "Water", category: category_four)
Answer.create(content: "Pop", category: category_four)
Answer.create(content: "Milk", category: category_four)
Answer.create(content: "Gatorade", category: category_four)

Answer.create(content: "Winter Coat", category: category_five)
Answer.create(content: "Air Jordans", category: category_five)
Answer.create(content: "Nikes", category: category_five)
Answer.create(content: "Jeans", category: category_five)
Answer.create(content: "Gloves", category: category_five)

Answer.create(content: "Shopkin", category: category_six)
Answer.create(content: "Xbox", category: category_six)
Answer.create(content: "Apartment", category: category_six)
Answer.create(content: "Play Station", category: category_six)
Answer.create(content: "House", category: category_six)
