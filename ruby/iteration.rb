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
