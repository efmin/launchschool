require 'date'

puts Date.civil
puts Date.civil == Date.new
puts Date.civil(2016)
puts Date.civil(2016) == 2016-01-01
puts Date.civil(2016, 5) == 2016-05-01
puts Date.civil(2016, 5, 13) == 2016-05-13

# Expected these to return true and then realized that my 
# comparison objects to the left of the operator are 
# evaluated as integer results of math operations. 
