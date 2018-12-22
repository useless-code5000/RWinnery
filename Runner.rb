require './Places.rb'
require './Plants.rb'

@wine01 = Winery.new

def cmd_matrix
	print "> "
	case gets.chomp
	when "np" # new plant
		@wine01.new_plant(gets.chomp, rand(1..100), 1, 1, 0) # Name / HP / Age / Leaves / raceme
	when 'nw' # new worker
		@wine01.new_worker(gets.chomp, 22) # Name / Age
	when "lp" # list plants
		puts @wine01.plants_stats
	when 'lw' # list workers
		puts @wine01.workers_stats
	when 'c' # cycle / push time forward 1y
		@wine01.cycle
	when 'q' # quit / break main loop
		$i = 0
	else
		puts "Building Age: #{@wine01.building_age}"
		puts "Plants: #{@wine01.plants_stats}"
		puts "Workers: #{@wine01.workers_stats}"
	end
end

# main loop
$i = 1
while $i > 0  do
	cmd_matrix
end