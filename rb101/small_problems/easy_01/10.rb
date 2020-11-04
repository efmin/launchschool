# 10DIME
# input: a positive int and a boolean
# output: an integer representing the bonus depending on boolean being t/f

# pseudo-code
# - I need a condition where if boolean is true, my output is half the int value and if false, it is 0

def calculate_bonus(salary, boolean)
  boolean ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

