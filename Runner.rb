require './Buildings.rb'

def debugger
	puts "[DEBUG]"
end

# Set - Development
@wine01 = Winnery.new # Spawn new intance of The Winnery Building / development stage

# Interface
def output_op(b_info)
	puts "Plants List: #{b_info}"
	puts "---------------"
end

def user_input_matrix
	case gets.chomp
	when "n" # Spawn a new plant
		@wine01.new_plant(gets.chomp, 10, 1, 1) # Plant Name / HP / Age
	when "l" # Plants list
		output_op(@wine01.plants_stats)
	when 'q' # Quit
		$i = 0
	else
		puts "unknown command"
	end
end

# Main loop
$i = 1
while $i > 0  do
	user_input_matrix
end