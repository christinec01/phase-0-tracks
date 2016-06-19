client = {}#create a hash to store key value pairs
client = {client_name:nil,
   client_age: nil,
   has_kids: nil,
   design_theme: nil,
 }
 #add keys : client_name, client_age, has_kids, design_theme, city

puts "what is your name?"
client[:client_name]  = gets.chomp
puts client[:client_name]
puts "..........................................................."


puts "what is your age?"
client[:client_age] = gets.chomp.to_i
puts client[:client_age]

puts "..........................................................."

puts "Do you have kids?(y/n)"
client[:has_kids] = gets.chomp

  puts client[:has_kids]
end
puts "..........................................................."


puts "what is your design theme?"
client[:design_theme] = gets.chomp
puts client[:design_theme]

puts "..........................................................."
puts "..........................................................."

#display results for user.
puts "Great! Thank you for providing this information. Just to make sure we have all of the correct information, please reivew:"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts client

#give user an opportunity to update a key value entery
#if they do not need to update anything, prompt them to enter "none"

puts "Would you like to update any of your enteries?
If so, please list which one,(name, age, kids(y/n), or desin theme) if not please enter 'nope'."
answer = gets.chomp

if answer == "name"
  puts "What is your name?"
  client[:client_name]  = gets.chomp

elsif answer == "age"
  puts "What is your age?"
  client[:client_age] = gets.chomp.to_i

elsif answer == "kids"
  puts "DO you have kids?"
  client[:has_kids] =get.chomp
    puts client[:has_kids]
elsif answer == "design theme"
  puts "what is your desgin theme?"
  client[:design_theme] = gets.chomp

elsif answer == "nope"
  puts client

else
  puts "I'm sorry, thats not a valid entery.."


puts client
end
