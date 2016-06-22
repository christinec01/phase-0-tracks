
  #swap first and last name
  #change all of the vowels to the next vowel in (aeiou)
  #change all the consinants to the next consinants
    name= "bill randal"
       name_array= name.split(' ')#gets it into an array

        last_name = name_array.pop#grabs last name
        first_name =name_array.first#graps first name

 new_name = last_name+ " " +first_name #new string with last,firt name

#for any vowels, iterate to the next vowel in the list (aeiou)


iterator= new_name.split('')
i = 0

iterator[i]#iterates through each letter
#if iterator[i]==vowels
#  p iterator[i].next
#else
#  iterator[i]
#end
p new_name
while i<new_name.length
  vowel = "aeiou"

    if vowel.include?(new_name[i])
        new_name[i]= vowel[vowel.index(new_name[i])+1]
        i+=1
      else

        new_name[i]=new_name[new_name.index(new_name[i])+1]
        i+=1

    end

p new_name
end

#probably need something iterate through each letter, while i<new_name.length
#if aeiou, replace with the next vowel in the vowel array, .next
