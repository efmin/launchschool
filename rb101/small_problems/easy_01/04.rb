# def count_occurrences(vehicles)
#   vehicles.tally.each {|car, count| puts "#{car} => #{count}"}
# end

# redo assignment using brute force way instead of relying on rb abstraction:

def count_occurrences(vehicles)
  # I need to create a hash that has a key of each unique value and a value of the total occurrence count of each key
  # to create the hash keys, I can use the uniq method on the input array to return an array of unique value 
  # to count the occurences, I need to loop through the original array and match each object with each hash key, add 1 count to the tally when it returns true

  hash = {}
  vehicles.uniq.each do |vehicle|
    hash[vehicle] = 0
  end
  hash.map do |k, v|
    vehicles.each do |vehicle|
      if k == vehicle
        hash[k] = v += 1
      end
    end
  end
  puts hash
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
