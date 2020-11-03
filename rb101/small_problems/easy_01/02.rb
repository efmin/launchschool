# using modulus:

# def is_odd?(n)
#   n % 2 == 0 ? false : true 
# end

# using remainder:
#
def is_odd?(n)
  n.remainder(2) == 0 ? false : true 
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7) 
