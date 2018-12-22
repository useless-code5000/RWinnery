

class Building
	def initialize
		@space = 10 # how many bottles could keep
	end
end

class Winery < Building
	def initialize
		@wine_bottles = Hash.new{|hsh,key| hsh[key] = {} }
	end

	def return_bottles; return @wine_bottles; end
	def return_building_age; return @building_age; end
	def cycle; @building_age = @building_age + 1; end

	def new_bottle(bname, colour, year, size)
		@wine_bottles[bname].store 'colour',colour
		@wine_bottles[bname].store 'year',year
		@wine_bottles[bname].store 'size',size
	end
end

class Field
	def initialize
		@size = 3 # 3 = 3 plants
		@workers = Hash.new{|hsh,key| hsh[key] = {} } # Workers on field
	end

	def new_worker(wname, age); @workers[wname].store 'age',age; end
	def return_size; return @size; end
	def return_workers; return @workers; end
end