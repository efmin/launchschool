# 10DIME
# Input: a positive integer
# Output: A string of alternating 1/0's starting with 1 that is the length of the input integer

# Pseudocode:
# - I want a loop of input-value times that will print 1 for odd loop iterations and 0 for even.

def stringy(input)
  result = []
  counter = 1
  until counter == input + 1
    counter.odd? ? result << 1 : result << 0
    counter += 1
  end
  result.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

