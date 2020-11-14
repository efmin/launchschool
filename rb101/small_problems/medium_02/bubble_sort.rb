# Pseudo-Code
# - set index value of final element to array.size + 1 
# - set condition for sorting to be completed as a boolean?
#   - if I set sorted = false to start then I can set it to true when
#   I am inside of the pass-through loop and set it back to false if a swap happens?

# - pass-through:
# - set array index counter = 0
# - iterate through array, compare array[0] > array[1]
#   - if true, set array[0] = array[1] and array[1] = array[0]
# - increment index += 1

# - use loop do/while and not each so that I can decrease the length of each run-through by 1 to reflect that the last array element of each run-through  will certainly be the greatest  
# once basic logic complete, write validation to ensure that input is comparable and is of one datatype within the array object

require 'pry'

def bubble_sort!(array)
  last_object_of_run = array.size - 1
  sorted = false
  
  index = 0
  until index == last_object_of_run 
    if array[index] > array[index+1]
      p "My array is: #{array}"
      first = array[index]
      p "first is #{first}"
      second = array[index+1]
      p "second is #{second}"
      array[index] = second 
      p array[index] == second
      array[index+1] = first 
      p array[index+1] == first
      index += 1
    end
  end
  array

end

p bubble_sort!(%w(d c b a))
# test cases

# bubble_sort!([1, 0, 5, 100])
# bubble_sort!([1, 4.0, 0.0, 0, 1.0, 100])
# bubble_sort!([1, nil])
# bubble_sort!([true, true, true])
# bubble_sort!(["", ""])
# bubble_sort!(%w(strings and empty things) + [" "])
# bubble_sort!(%w(% $ !!! # @ ???))



