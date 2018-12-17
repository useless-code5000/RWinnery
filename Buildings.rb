require "./Plant.rb" # This is needed for grower type buildings: winnery, farmer etc

# The main class which define building object basics
# Other buildings classes inherit from this one.
class Building
	def initialize
		@state = 1 # 1 = ready 2 = in progress
		@type = 1 # 1 = small 2 = residential # 3 = castle
	end
end

# Wine production building ###########################
class Winnery < Building
	def initialize
		@plants = Hash.new{|hsh,key| hsh[key] = {} }
		@worker = Hash.new{|hsh,key| hsh[key] = {} }
	end

	def write_to_plants
		return 0
	end
# Plants section #####################################
	def new_plant(pname, hp, age, leaves)
		@plants[pname].store 'hp',hp
		@plants[pname].store 'age',age
		@plants[pname].store 'leaves',age
	end
######################################################
	def plants_stats
		return @plants
	end
end