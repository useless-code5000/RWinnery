class Building
	def initialize
		@state = 1 # 1 = ready 2 = in progress
		@type = 1 # 1 = small 2 = residential # 3 = castle
	end
end

class Winnery < Building
	def initialize
		@plants = Hash.new{|hsh,key| hsh[key] = {} }
		@worker = Hash.new{|hsh,key| hsh[key] = {} }
	end

	# RETURNS
	def worker_stats
		return @worker
	end

	def plants_stats
		return @plants
	end

	# CREATION
	def new_worker(wname, hp, age)
		@worker[wname].store 'hp',hp
		@worker[wname].store 'age',age
	end

	def new_plant(pname, hp, age, leaves)
		@plants[pname].store 'hp',hp
		@plants[pname].store 'age',age
		@plants[pname].store 'leaves',leaves
	end

	# OTHER
	def cycle_day
		return 0
	end
end