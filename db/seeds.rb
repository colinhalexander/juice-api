# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Ingredient.destroy_all

CSV.foreach(Rails.root.join('lib/FruitVegData.csv'), headers: true) do |row|
    Ingredient.create({
        name: row[0],
        foodGroup: row[1],
        protein: row[2],
        fat: row[3],
        carbohydrates: row[4],
        calories: row[5],
        sugar: row[6],
        calcium: row[7],
        potassium: row[8],
        vitaminA: row[9],
        vitaminC: row[10],
        folate: row[11],
        img: row[12]
    })
end
