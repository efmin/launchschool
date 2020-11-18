def multiply(x, y)
  x * y
end

puts multiply(5, 3) == 15

def square(x)
  multiply(x, x)
end

puts square(5) == 25
puts square(-8) == 64
