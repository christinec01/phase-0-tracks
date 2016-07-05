class Santa
  def eat_milk_and_cookies(cookie)

  puts "that was a good #{cookie} cookie!!"
end
  def initialize(gender, example_ethnicity)
    @example_ethnicity = example_ethnicity
    @agender = gender
  puts "Initializing Santa instance..."
end
def suit_color(suit_color)
    @suit_color = suit_color
    puts "Generating the color-ator..."
end
def speak
  puts "#{@example_ethnicity} Santa says: ho ho ho!"
  puts "======================"

end

def reindeer_ranking
  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Pranceer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
end
def age
  age = 0
end
 end
 example_ethnicities = ["caucasian", "european", "middle eastern", "pacific islander", "hispanic"]
 suit_colors = ["red", "mahogany", "yellow", "blue", "beige"]
 gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santa = []

# p santa << Santa.new("agender", "black")
# p santa << Santa.new("female", "Latino")
# p santa << Santa.new("bigender", "white")
# p santa << Santa.new("male", "Japanese")
# p santa << Santa.new("female", "prefer not to say")
# p santa << Santa.new("gender fluid", "Mystical Creature(Unicorn)")
# p santa << Santa.new("NA", "NA")


 example_ethnicities.each do |example_ethnicity|
 santa << Santa.new(example_ethnicity)
   p "This Santa is #{example_ethnicity}!"
  puts "=========================="
end
suit_colors.each do |suit_color|
  santa << Santa.new(suit_color)
  p "This santa has on a #{suit_color} suit"
  puts "==========================="
end

puts "There are now #{santa.length} Santas!"
puts "the santas can speak..."
santa.each do |santa|
  santa.speak
end
example_ethnicities.each do |example_ethnicity|
  santa << Santa.new(example_ethnicity)
  p "This Santa is #{example_ethnicity}!"
  puts "=========================="
end
suit_colors.each do |suit_color|
  santa << Santa.new(suit_color)
  p "This santa has on a #{suit_color} suit"
  puts "==========================="
end

puts "There are now #{santa.length} Santas!"
puts "the santas can speak..."
santa.each do |santa|
  santa.speak
end
