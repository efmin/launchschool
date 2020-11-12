def prompt(message)
  puts ">> #{message}"
end

def sum(int)
  1.upto(int).reduce(:+)
end

def product(int)
  1.upto(int).reduce(:*)
end

def print_msg(int)
  prompt("The sum of the integers between 1 and #{int} is #{sum(int)}.")
end

prompt('Please enter an integer greater than 0:')
number = gets.chomp.to_i

prompt("Please enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

operation == 's' ? print_msg(number) : print_msg(number)





