require './Buildings.rb'

# Cosmetic
def separator
	puts "---------------"
end

# Set
wine01 = Winnery.new # Spawn new intance of The Winnery Building / development stage

# Main loop
while 1 > 0  do
	wine01.new_plant("molly", 1, 3, 3) # Arguments: plant_name, age, q_leaves, health
	wine01.new_plant("molly2", 1, 1, 1)
	separator
	wine01.building_stats
	break
end