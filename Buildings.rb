class Building
	def initialize
		@state = 1 # 1 = ready 2 = in progress
		@type = 1 # 1 = small 2 = residential # 3 = castle
	end
end

class Winery < Building
	def initialize
		@building_age = 0
		@plants = Hash.new{|hsh,key| hsh[key] = {} }
		@workers = Hash.new{|hsh,key| hsh[key] = {} }
	end

	# RETURNS
	def workers_stats
		return @workers
	end

	def plants_stats
		return @plants
	end

	# CREATION
	def new_worker(wname, age)
		@workers[wname].store 'age',age
	end

	def new_plant(pname, hp, age, leaves)
		@plants[pname].store 'hp',hp
		@plants[pname].store 'age',age
		@plants[pname].store 'leaves',leaves
	end

	# OTHER
	def cycle_day
		@building_age = @building_age + 1
	end
end