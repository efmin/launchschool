require 'pry'

def prompt(message)
  puts ">> #{message}"
end

prompt("Welcome to Morgage Calculator. What is your loan amount?")
loan_amount = gets.chomp
# loan_amount is a string of an integer represented by P 

binding.pry
