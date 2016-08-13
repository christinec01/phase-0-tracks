int_design = {}
puts "Hello, what is your name?"
client_name = gets.chomp
int_design[:client_name]
puts "Thank you, #{client_name}. And how old are you, please?"
client_age = gets.chomp
int_design[:client_age]
puts "#{client_age}!?! You don't dont look a day over 20!"
puts "================================="
puts "Which of our wallpaper options would you like to explore?"
int_design[:wallpaper] = ["none'..wallpaper...GROSS'", "Paisly", "Black and white stripes"]
 #make a method to display the wallpaper in a nice way
# make a method to allow the user to select the wallpaper they'd like, then return their option in a puts statement so they
# know you've got it
def print_wallpaper(hash)
  hash[:wallpaper].each do |item|
    puts "Would you like #{item}?"
  end
end

def loop_through_hash(hash)
  hash.each do |keys,values|
    puts "Here are your stats:
     #{keys}: #{values}"
  end
end

 print_wallpaper(int_design)
loop_through_hash(int_design)
p int_design
