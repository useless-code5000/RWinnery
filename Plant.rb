class Plant
	def initialize(name, health, age, leaves)
		@health = health # 1 = healthy
		@name = name
		@age = age # days
		@leaves = leaves # quantity
	end

	def age_increment
		@age = @age + 1
	end

	def plant_stats
		return @age
	end
end