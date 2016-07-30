# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice)
#

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split the input string using the whitespace as a delimiter
  #create a hash
  #call an each iteration
    #push array of items into their own key
    # value of each key will default to 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(string)
  list = string.split(" ")
  grocery_list = {}
  list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list
end

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # establish parameters for the method
  # define those parameters
    #parameter1 = the hash
    #parameter2 = key
  # assigning to our hash
    #   # call the print hash method (defined below)
# output: hash
def add_item(grocery_list, item)
  grocery_list[item] = 1
  grocery_list
end

# Method to remove an item from the list
# input:
  #A String represents the item to be removed from the hash
# steps:
  #pass string into delete("string")
 # call the print hash method (defined below)
# output:
  # hash
  def remove_item(grocery_list,item)
    grocery_list.delete(item)
    grocery_list
  end
# Method to update the quantity of an item
# input:
  #establish the parameters (bananas, 2)
# steps:
  #take the first parameter, and find existing key in the hash by the same name
  #replace the existing value of that key, with the 2nd parameter
# call the print hash method (defined below)
# output:
  # hash
  def quantity_update(grocery_list,item,quantity)
    grocery_list[item]= quantity
    grocery_list
end

# Method to print a list and make it look pretty
# input:
  #print(grocery_list) which would correspond with the name of our hash
# steps:
  #"Your Grocery List.
  #print "#{key}: + #{value}" for each key and value
  #"#
# output: none
def print_list(grocery_list)
puts "Your list is as follows:"
grocery_list.each do |item|
  p grocery_list["#{item}"]
end

end

#driver code
puts "testing the create list method"
my_list =  create_list("carrots apples apples")
p my_list
puts
puts "testing the add item method"
my_list = add_item(my_list, "pear")
p my_list
puts
puts "testing the remove item method"
my_list = remove_item(my_list, "carrots")
p my_list
puts
puts "testing the update quantity method"
my_list = quantity_update(my_list, "apples", 3)
p my_list
puts
puts "testing print list method"
my_list = print_list(my_list)


# hash = {
#   "thing":1,
#   "other_thing":2
#   }

#def print_hash
#  hash
