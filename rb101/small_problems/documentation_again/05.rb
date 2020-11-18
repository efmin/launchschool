a = %w(a b c d e)
# puts a.fetch(7)
# should throw an index out of bounds error

puts a.fetch(7, 'beats me') == 'beats me'
# since we're setting a default error handling message of 'beats me', it should return that

puts a.fetch(7) { |index| index**2 } == 49

