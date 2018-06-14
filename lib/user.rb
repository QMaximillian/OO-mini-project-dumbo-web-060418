class User

	attr_accessor :name

	@@all = []

	def initialize(name)
		@@all << self
		@name = name
	end

	def self.all
		@@all
	end

	def recipes
		RecipeCard.all.select do |card|
			card.user == self
		end
	end

	def add_recipe_card(recipe, date, rating)
		RecipeCard.new(recipe, date, rating, self)
	end

	def declare_allergen(ingredient)
		Allergen.new(self, ingredient)
	end

	def get_allergens
		Allergen.all.select do |allergen|
			allergen.user == self
		end
	end

	def allergens
		self.get_allergens.map do |allergen|
			allergen.ingredient
		end
		

	end

	def top_three_recipes
	
	#FOR REFACTORING - Figure out way to return an array sorted by descending
	# ONE WAY
	# sorted_recipes = self.recipes.sort_by {|recipe| recipe.rating}
	# reversed_sorted_array = sorted_recipes.reverse
	# reversed_sorted_array[0,3]

	#ANOTHER WAY
	# recipes.sort {|a,b| b.rating <=> a.rating}
	binding.pry

	self.recipes.max_by(3) {|recipe| recipe.rating}


	end

	def most_recent_recipe
		# * Why is it returning attributes in a different order?

		self.recipes[-1]
	end

end	