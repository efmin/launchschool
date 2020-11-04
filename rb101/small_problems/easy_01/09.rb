# 10DIME
# Input: a positive integer
# Output: sum of input's digits

# Pseudo-Code:
# - I want to split my input into an array of its digits, sum the array and return the resulting integer value

def sum(int)
  int.digits.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
