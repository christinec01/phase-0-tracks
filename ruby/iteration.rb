def greeting
  person1 = "bob"
  puts "how's it going"
  3.times do
    yield(person1)
  end
end

greeting { |person1| puts "it's going well says #{person1}" }

#release one
color_array = ['red', 'blue', 'yellow', 'green', 'black']

puts "array before .each"
puts "#{color_array}"

capital_letters = []
color_array.each do |color|
  capital_letters << color.upcase
end
puts "array after .each"
puts color_array
puts "array after .each with results in new array"
puts capital_letters

puts "color array before .map!"
puts color_array

color_array.map! do |color|
  color.upcase
end
puts "color array after .map!"
puts color_array

favorite_food = {
  vegetable: "Chard",
  fruit: "Strawberry",
  dessert: "Pudding"
  }

puts "Hash before .each:"
puts favorite_food

favorite_food.each do |food_type, fav_food|
  puts "hash in .each looop"
  puts "#{food_type.upcase}" + " #{fav_food.upcase}"
end

#release two question oneletters_array = ["a", "e" , "i", "o", "u", "b"]
puts "before .delete_if method"
puts "#{letters_array}"
letters_array.delete_if {|letter| letter == "b"}
puts "after .delete_if method"
puts "#{letters_array}"


names = {
  1 => "Alice",
  2 => "Ann",
  3 => "Christine",
  4 => "Ilaria"
  }

names.delete_if do |number, name|
  name.start_with? "A"
end
puts names

#question two

letters_array = ["a", "e" , "i", "o", "u", "b"]
puts "before .keep_if method"
puts "#{letters_array}"
letters_array.keep_if {|letter| letter == "b"}
puts "after .keep_if method"
puts "#{letters_array}"


names = {
  1 => "Alice",
  2 => "Ann",
  3 => "Christine",
  4 => "Ilaria"
  }

names.keep_if do |number, name|
  name.start_with? "A"
end
puts names

#question 3
names = {
  1 => "Alice",
  2 => "Ann",
  3 => "Christine",
  4 => "Ilaria"
  }
new_names = names.reject do |number, name|
   name.start_with? "A"
end
puts new_names



letter_array = [1, 23, 4, 55, 9]
new_array = letter_array.drop(3)
puts new_array
#question 4
letter_array = [1, 23, 4, 55, 9]
new_array = letter_array.drop_while do |item| item < 4
end


names = {
  1 => "Alice",
  2 => "Ann",
  3 => "Christine",
  4 => "Ilaria"
  }
new_names = names.reject do |number, name|
 names.has_value?("Christine")
end
puts new_names
