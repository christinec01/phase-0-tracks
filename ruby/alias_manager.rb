def alias_name()
  puts "Please enter your name so we can generate your alias:"
#name = gets.chomp
h = {}

#wrap this all in a method
#swap first and last name
  #change all of the vowels to the next vowel in (aeiou)
  #change all the consinants to the next consinants

  		h[:name] = gets.chomp.downcase
  	name = h[:name]

       name_array= name.split(' ')#gets it into an array

        last_name = name_array.last#grabs last name
        first_name =name_array.first#graps first name

 #new_name = last_name+ first_name #new string with last,firt name
#for any vowels, iterate to the next vowel in the list (aeiou)

iterator= last_name.split("")
i = 0

#iterates through each letter
#if iterator[i]==vowels
#  p iterator[i].next
#else
#  iterator[i]
#end
  consinants = "bcdfghjklmnpqrstvwxyzb"
  vowel = "aeioua"

while i<last_name.length
	if vowel.include?(last_name[i])
        last_name[i]= vowel[vowel.index(last_name[i])+1]
        i+=1
      elsif
         last_name[i]= consinants[consinants.index(last_name[i])+1]
        i+=1

else
  last_name[i]
  i+=1
    end

 last_name
end
i = 0
while i< first_name.length
 if vowel.include?(first_name[i])
	first_name[i] = vowel[vowel.index(first_name[i])+1]
	i +=1
	elsif
	first_name[i] = consinants[consinants.index(first_name[i])+1]
	i +=1

else
	first_name[i]
end
 first_name
end
new_name = last_name+ " "+ first_name
puts "Thank you! your alias is:"
p new_name

puts "Would you like to enter another name?(y/n)"
response = gets.chomp
if response == "y"
   alias_name
end

p h.each {|name, alias_name| puts "Your name is #{alias_name} and your alias is #{new_name}"}
end

alias_name
