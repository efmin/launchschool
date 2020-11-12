def print_odd(input)
  input.each { |n| puts n if n.odd?}
end

# print_odd(1..99)

# Further exploration

# 1.upto(99) {|n| puts n if n%2 == 1

(1..99).select {|n| puts n unless n%2 == 0}
