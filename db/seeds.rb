require 'open-uri'

list_raw = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
list = list_raw["drinks"] # this is an array!

list.each do |item|
  ingredient = Ingredient.new(name: item["strIngredient1"])
  ingredient.save!
end
