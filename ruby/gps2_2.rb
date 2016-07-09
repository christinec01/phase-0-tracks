#create a new list

def add_item_to(list, item, quantity)#add an item with a quantity to the list
  # list = []
   grocery_item = {
    item: item,
    quantity: quantity
  }

   list <<  grocery_item

end

def remove_item_from(list, item)
  list.delete(item)
end

def update_quantity(list, location, new_quantity) #update quantities for items in your list
  list[location][:quantity] = new_quantity
end

def run_list(list) # make the list look nice
    puts "Grocery list"
    i = 0
   while i < list.length do
     item_item =  list[i][:item]
     item_quantity = list[i][:quantity]
     p item_quantity.to_s + ' ' + item_item
     i += 1
   end
end


# create_listi\
list = []
add_item_to(list, "apples", 1)
add_item_to(list, "bananas", 4)
add_item_to(list, "mango", 5)
add_item_to(list, "cereal", 4)
add_item_to(list, "bananas", 4)
add_item_to(list, "bananas", 4)
run_list(list)
