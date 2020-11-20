require 'open-uri'
require 'json'

Dose.destroy_all
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
drinks_serialized = open(url).read
ingredients = JSON.parse(drinks_serialized)

ingredients["drinks"].each do |data|
  new_ingredient = Ingredient.new(name: data["strIngredient1"])
  new_ingredient.save!
end
