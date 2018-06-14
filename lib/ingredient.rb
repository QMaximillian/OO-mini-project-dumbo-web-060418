class Ingredient
	attr_accessor :ingredient
	
	@@all = []

	def initialize(ingredient)
		@ingredient = ingredient
		@@all << self
	end

	def self.all
		@@all
	end

	def get_allergens
		Allergen.all.select do |al|
			al.ingredient == self 
		end
	end

	def self.most_common_allergen
		self.all.max_by do |ing|
			ing.get_allergens.count
		end
	end

end
