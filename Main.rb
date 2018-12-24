require './Places.rb'
require './Plants.rb'

@plants = []

def matrix
	print "> "
	case gets.chomp
	when "np" # new plant
		@plants << Crop.new(gets.chomp)
	when 'q' # quit / break main loop
		$i = 0
	else
		puts @plants
	end
end

# main loop
$i = 1
while $i > 0  do
	matrix
end