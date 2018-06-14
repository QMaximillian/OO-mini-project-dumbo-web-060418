class RecipeCard
	attr_accessor :date, :rating, :user, :recipe

	@@all = []

	 def initialize(recipe, date, rating, user)
		@date = date
		@rating = rating
		@user = user
		@recipe = recipe
		@@all << self 
	end

	def self.all
		@@all
	end

	def date

	end








end