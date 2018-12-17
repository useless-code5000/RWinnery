require './Buildings.rb'

@wine01 = Winery.new

def cmd_matrix
	case gets.chomp
	when "np" # new plant
		@wine01.new_plant(gets.chomp, rand(1..10), 1, 1) # Name / HP / Age / Leaves
	when 'nw' # new worker
		@wine01.new_worker(gets.chomp, 17) # Name / Age
	when "lp" # list plants
		puts @wine01.plants_stats
	when 'lw' # list workers
		puts @wine01.workers_stats
	when 'grow' # push time forward 1day
		puts @wine01.cycle_day
	when 'q' # quit / break main loop
		$i = 0
	else
		puts "ACMD: np - new plant / nw - new worker / lp - list plants / lw - worker stats / q - quit"
	end
end

# main loop
$i = 1
while $i > 0  do
	cmd_matrix
end