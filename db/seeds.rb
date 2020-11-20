require 'open-uri'
require 'json'

Dose.destroy_all
Ingredient.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
drinks_serialized = open(url).read
ingredients = JSON.parse(drinks_serialized)

ingredients["drinks"].each do |data|
  new_ingredient = Ingredient.new(name: data["strIngredient1"].capitalize)
  new_ingredient.save!
end

ingwerer = Ingredient.new(name: "Ingwerer")
ingwerer.save!
ginger_beer = Ingredient.new(name: "Ginger beer")
ginger_beer.save!
fresh_mint = Ingredient.new(name: "Fresh mint")
fresh_mint.save!
