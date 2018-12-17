class Building
	def initialize
		@state = 1 # 1 = ready 2 = issue
		@space = 1 # 1 = small 2 = medium # 3 = big
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

	def building_age
		return @building_age
	end

	# CREATION
	def new_worker(wname, age)
		@workers[wname].store 'age',age
	end

	def new_plant(pname, hp, age, leaves)
		@plants[pname].store 'timestamp',@building_age
		@plants[pname].store 'hp',hp
		@plants[pname].store 'age',age
		@plants[pname].store 'leaves',leaves
	end

	# OTHER
	def cycle
		@building_age = @building_age + 1
		# increment_plants_age {[*][age: value+1]}
	end
end