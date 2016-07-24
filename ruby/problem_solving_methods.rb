# release 0
my_arr = [1,2,3,4,5,6]
def search_arr(array,integer)
  if integer > array.length
    "nil"
  else
    array[integer]
  end
end
puts "test code for sear_arr"
puts search_arr(my_arr, 1)
puts search_arr(my_arr,88)

#relase 2
def fib(number)
  fib_array = [0,1]
  number.times do |n|
    if n > 0
      fib_array<< (fib_array[n]+fib_array[n-1])
    end
  end
    fib_array
end

puts "test code for fib method"
print fib(3)
puts " "
puts fib(100)[99] == 218922995834555169026

#Release 3
array = [2,44,6,1,0]
def bubble_sort(array)
making_swaps = true
  while making_swaps do
    making_swaps = false
    array.length.times do |number|
      if number < array.length-1 && array[number]> array[number + 1]
        temp = array[number]
        array[number]= array[number + 1]
        array[number + 1]= temp
        making_swaps = true
      end
    end
  end
  array
end
puts "test code for bubble sort method"
print bubble_sort(array)
