# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: "test@example.com")
#day = Day.create(user_id: user.id, date: Date.today)
#meal = Meal.create(day_id: day.id)
#food = Food.create(user_id: user.id, name: "Eggstuff", serving: 250, fat: 20, protein: 25, carbohydrates: 15)