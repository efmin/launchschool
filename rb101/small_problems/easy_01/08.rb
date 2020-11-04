# 10DIME

# Input: arr of integers
# Output: avg of arr
# Definitions: int will be positive and arr will never be empty (yay!)

# Pseudo Code:
# - I want to sum all the integers using array#sum method and then divide the sum by the total occurrence count of integers

def average(array)
  array.sum.fdiv(array.count)
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
