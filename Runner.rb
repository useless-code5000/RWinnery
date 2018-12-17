require './Buildings.rb'

@wine01 = Winnery.new

def user_cmd_matrix
	case gets.chomp
	when "np" # new plant
		@wine01.new_plant(gets.chomp, 10, 1, 1) # Name / HP / Age / Leaves
	when 'nw' # new worker
		@wine01.new_worker(gets.chomp, 100, 17) # Name / HP / Age
	when "lp" # list plants
		puts @wine01.plants_stats
	when 'lw' # list workers
		puts @wine01.worker_stats
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
	user_cmd_matrix
end