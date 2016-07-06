class Santa
  def eat_milk_and_cookies(cookie)

  puts "that was a good #{cookie} cookie!!"
end
  def initialize(gender, example_ethnicity)
    @example_ethnicity = example_ethnicity
    @agender = gender


  puts "Initializing Santa instance..."
end
def suit_color()
  puts "#{@example_ethnicity} Santa has a #{@suit_color} coat on!"
    @suit_color = suit_color
end
def speak
  puts "#{@example_ethnicity} Santa says: ho ho ho! Haaaaapy hollidays!"
  puts "======================"

end


def reindeer_ranking
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Pranceer", "Vixen", "Comet", "Cupid", "Donner"]
end
def age
  age = 0
  puts "This santa is #{age} years old"
end
 end
 example_ethnicities = ["caucasian", "european", "middle eastern", "pacific islander", "hispanic"]
 gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
 suit_color = ["red", "mahogany", "yellow", "blue", "beige"]
santa = []
p santa << Santa.new("agender", "black")
p santa << Santa.new("female", "Latino")
p santa << Santa.new("bigender", "white")
p santa << Santa.new("male", "Japanese")
p santa << Santa.new("female", "prefer not to say")
p santa << Santa.new("gender fluid", "Mystical Creature(Unicorn)")
p santa << Santa.new("NA", "NA")


 example_ethnicities.length.times do |i|
 santa << Santa.new(gender[i], example_ethnicities[i])
end
# santa.length do |santa|
# puts "There are now #{santa.length} Santas!"
# puts "the santas can speak..."
#
#   santa.speak
# end
# example_ethnicities.each do |example_ethnicity|
#   santa << Santa.new(gender, example_ethnicity)
#   p "This Santa is #{example_ethnicity}!"
#   puts "=========================="
# end

puts "There are now #{santa.length} Santas!"
puts "the santas can speak..."
santa.each do |santa|
  santa.speak
  santa.age
end

gender.length.times do |i|
  santa<< Santa.new(gender[i], example_ethnicities[i])
  puts "This santa is #{gender[i]}"
end
