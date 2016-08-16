# new Class of School_bus
	# at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
	# at least three methods, at least one of which takes an argument


#Create New Class
# 	Attribute;
		# -- Kids on the bus that day, and name,
		# -- drivers years of experience,
		# -- school bus number
# `Methods; Windshield wipers => when it's raining, wheels, and  Driver who says move on back

class School_bus
	attr_accessor :experience, :kids_on_the_bus
	attr_reader :bus_number

	def initialize(experience, bus_number)
		@experience = experience
		@bus_number = bus_number
		puts "This is a new bus."
	end

	def kids
		@kids_on_the_bus
	end

	def add_kid_on_the_bus(kids_name)
		@kids_on_the_bus = []
		@kids_on_the_bus << kids_name.split
	end

	def wheels_on_the_bus
		puts "The wheels on the bus go round and round!"
		puts "Round and round"
	end

	def windshield_wipers
		puts "is it raining? y/n"
		raining = gets.chomp.downcase
			if raining == 'y'
				puts "The wipers on the bus go swish, swish, swish"
				puts "Swish, swish, swish, swish, swish, swish"
				puts "The wipers on the bus go swish, swish, swish"
				puts "All 'round the town"
			else
				puts "No windshield wipers needed!"
			end
	end
end

buses = {}
action = ""
while action != 'done'
	puts "Would you like to create a new bus? Add a Child to a bus? Check to see what the wheels are doing? See if you need the windshield wipers? Or are you done."
	puts "To select an action type 'new' 'child' 'wheels' 'wipers' 'done'"
	action = gets.chomp.downcase
		case action
		when 'new'
			puts "So you want to create a new bus! Great, What is the bus number and the drivers experience in round years?"
			puts "what is the number?"
			bus_number = gets.chomp.to_i
			puts "How long has the driver been driving?"
			experience = gets.chomp.to_i
			buses[bus_number] = School_bus.new(experience, bus_number)
			p buses
		when 'child'
			puts "You need to add a child to a bus?"
			puts "What's your child's name?"
			name = gets.chomp.downcase
			puts "What bus is he on?"
			bus_num = gets.chomp.to_i
			buses[bus_num].add_kid_on_the_bus(name)
			# if buses.each {|bus| bus[bus_number] == bus_num}
			p buses
		when 'wheels'
			puts "Do you want to see whats happening with the wheels?"
			puts "What bus number you checking?"
			bus_num = gets.chomp.to_i
			puts
			buses.fetch(bus_num).wheels_on_the_bus
			puts
		when 'wipers'
		puts "Do you want to see whats happening with the whipers?"
			puts "What bus number you checking?"
			bus_num = gets.chomp.to_i
			puts
			buses.fetch(bus_num).windshield_wipers
			puts
		when 'done'

		else #sorry didn't understand
			puts "I'm not sure I understand what you meant try again please!"
		end
end

puts
puts
puts "Thanks so much for keeping our kids safe!"
buses.each do |bus_num, bus|
	puts
	puts "Bus number #{bus_num} is driven by a driver that's been driving for #{bus.experience} year/s"
	child_array = bus.kids_on_the_bus
	puts "The kids on this bus are:"
	puts child_array
	puts
end


# bus = School_bus.new(5, 14)
# bus_2 = School_bus.new(1, 31)
# p bus
# bus.add_kid_on_the_bus("steven")
# p bus
# # bus.windshield_wipers
# bus.wheels_on_the_bus
# puts
# puts 'final test'
# p buses
# puts
# buses.each do |bus|
# 	if bus  == "steven"
# 	puts "only one bus"
# 	end
# end
