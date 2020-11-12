def print_odd(input)
  input.each { |n| puts n if n.odd?}
end

print_odd(1..99)
