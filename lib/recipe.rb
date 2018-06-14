class Recipe
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all 
	end

	def self.most_popular
		rec_car_rec = RecipeCard.all.map{|card|card.recipe}
		rec_hash = rec_car_rec.each_with_object(Hash.new(0)) { |recipe,counts| counts[recipe] += 1 }
		max_kv = rec_hash.max_by{|k,v| v}
		max_kv[0]
	end

	def get_cards
		RecipeCard.all.select do |card|
		card.recipe == self 
		end
	end

	def users
		self.get_cards.map do |card|
			card.user
		end.uniq
	end

	def add_ingredients(ingredient)
		RecipeIngredient.new(ingredient, self)
	end

	def get_ingredients
		RecipeIngredient.all.select do |rec_ing|
			rec_ing.recipe == self
		end
	end

	def ingredients
		self.get_ingredients.map do |rec_ing|
			rec_ing.ingredient
		end
	end

	def allergens
		self.ingredients.select do |ingredient|
			ingredient.get_allergens.length > 0
		end
	end






	
end