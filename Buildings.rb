require "./Plant.rb" # This is needed for grower type buildings: winnery, farmer etc

# The main class which define building object basics
# Other buildings classes inherit from this one.
class Building
	def initialize
		@state = 1 # 1 = up and ready 2 = in progress
		@type = 3 # 1 = small 2 = residential # 3 = castle
	end
end

# Wine production building ###########################
class Winnery < Building
	def initialize
		@plants = Hash.new{|hsh,key| hsh[key] = {} }
		@worker = Hash.new{|hsh,key| hsh[key] = {} }
	end

##### Plants section #################################
	def new_plant(pname, hp, age, leaves)
		@plants[pname].store 'hp',hp
	end

	def grow_plant
		@plant.age_increment
	end
######################################################

	def building_stats
		puts @plants
	end
end