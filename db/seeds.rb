# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
pizza = Recipe.create(title: "Pizza Hut Pan Pizza")
burrito = Recipe.create(title: "Abuela's Gringo Bait")

Ingredient.create(name: "dough", quantity: "1 lb.", recipe: pizza)
Ingredient.create(name: "cheese", quantity: "12 oz.", recipe: pizza)
Ingredient.create(name: "pepperoni", quantity: "20", recipe: pizza)

Ingredient.create(name: "tortilla", quantity: "1", recipe: burrito)
Ingredient.create(name: "refried beans", quantity: "6 oz.", recipe: burrito)