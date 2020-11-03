def count_occurrences(vehicles)
  vehicles.tally.each {|car, count| puts "#{car} => #{count}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
