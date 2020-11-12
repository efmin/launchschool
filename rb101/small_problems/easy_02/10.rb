array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)

# intialize empty array
array2 = []

# add values of array1 into array2
array1.each { |value| array2 << value }

# call destructive method on objects pf array1 which are referenced by array2, therefore changing the objects in array2
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }

# array2 should still print an empty array because each does not mutate its caller
puts array2
