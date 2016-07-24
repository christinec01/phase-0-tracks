  house = {
    "Living_room"=>["lamp", "sofa"],
    "Bathroom"=>["tub", "sink", "window"],
    "Bedroom"=> ["bed", "dresser", "window"],
  }

def big_letters(hash,key,location)
   hash[key][location].upcase
end

def furnish_house(hash, key, furniture_to_add)
   hash[key].push(furniture_to_add)
   puts "The #{key} now has a #{furniture_to_add}."
end



puts big_letters(house,'Bedroom', 1)
puts furnish_house(house, 'Living_room', "tv")
