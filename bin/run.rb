require_relative '../lib/user.rb'
require_relative '../lib/recipe_card.rb'
require_relative '../lib/recipe.rb'
require_relative '../lib/recipe_ingredient.rb'
require_relative '../lib/ingredient.rb'
require_relative '../lib/allergen.rb'

require 'pry'

elon_musk = User.new("Elon Musk")

a_recipe = Recipe.new("Salty pepper")
the_recipe = Recipe.new("A New Start")
new_recipe = Recipe.new("Too Hard to Make")

soup = RecipeCard.new(a_recipe, "1", 1, elon_musk)
so = RecipeCard.new(a_recipe, "2", 3, elon_musk)
sou = RecipeCard.new(the_recipe, "3", 2, elon_musk)
s = RecipeCard.new(new_recipe, "2", 4, elon_musk)

pepper = Ingredient.new("pepper")
salt = Ingredient.new("salt")

a_recipe.add_ingredients(pepper)


peppa = Allergen.new(elon_musk, pepper)
peppa = Allergen.new(elon_musk, pepper)
peppa = Allergen.new(elon_musk, pepper)
peppa = Allergen.new(elon_musk, pepper)
peppa = Allergen.new(elon_musk, salt)
peppa = Allergen.new(elon_musk, salt)






