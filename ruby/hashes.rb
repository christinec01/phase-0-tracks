client = {}#create a hash to store key value pairs
client = {client_name:nil,
   client_age: nil,
   has_kids: nil,
   design_theme: nil,
 }
 #add keys : client_name, client_age, has_kids, design_theme, city

puts "what is your name?"
client[:client_name]  = gets.chomp

puts client[:client_name] # Im glad to have a little head staart this week
#same, and as the weeks get harder it'll be nice to have a buffer
#well thank you,I will! good luck this week:)

puts "what is your age?"
client[:client_age] = gets.chomp.to_i
puts client[:client_age]


puts "Do you have kids?(y/n)"
client[:has_kids] = gets.chomp
if client[:has_kids] == "y"
  true
  puts client[:has_kids]
end

puts "what is your design theme?"
client[:design_theme] = gets.chomp
puts client[:design_theme]
#display results for user.
puts "Great! Thank you for providing this information. Just to make sure we have all of the correct information, please reivew:"
puts client

#give user an opportunity to update a key value entery
#if they do not need to update anything, prompt them to enter "none"
puts "Would you like to update any of your enteries? If so, please list which one,(name, age, kids(y/n), or desin theme) if not please enter 'nope'."
answer = gets.chomp
while valid_entry do 
if answer == "name"
  puts "What is your name?"
  client[:client_name]  = gets.chomp
  valid_entry == true
elsif answer == "age"
  puts "What is your age?"
  client[:client_age] = gets.chomp.to_i
  valid_entry == true
elsif answer == "kids"
  puts "DO you have kids?"
  if client[:has_kids] == "y"
    true
    print client[:has_kids]
    valid_entry== true
  end
elsif answer == "design theme"
  puts "what is your desgin theme?"
  client[:design_theme] = gets.chomp
  valid_entry == true
elsif answer == "nope"
  puts client
  valid_entry == true
else
  puts "I'm sorry, thats not a valid entery.."
  valid_entry ==false
end
puts client
exit
