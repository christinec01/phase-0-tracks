#takes a name like Felicia Torres and creates a new one by:
#1. swapping the first and last name
#2.Changing all the vowels to the next vowel in (aeiou)
#3.Changing all the consenants to the next consenant

def name_swapper(full_name)
  full_name = full_name.downcase
  vowel_array = ['a','e','i','o','u']
  consenant_array = "bcdfghjklmnpqrstvwxyz".split('')
  name_array = full_name.split(" ")
  reversed_name= "#{name_array[1]} #{name_array[0]}"
  secret_name = reversed_name.split('').map! do |letter|
    if vowel_array.include?(letter)
       vowel_array[vowel_array.index(letter)+1]
    elsif consenant_array.include?(letter)
         consenant_array[consenant_array.index(letter)+1]
    elsif letter == " "
      " "
    end

  end
  puts "Your name USED to be #{full_name.upcase}...but now your name is #{secret_name.join.upcase}!"
end
puts "Hello! What name would you like to create an alias for?"
full_name = gets.chomp
puts name_swapper(full_name)
