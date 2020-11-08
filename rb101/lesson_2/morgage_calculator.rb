require 'pry'

def prompt(message)
  puts ">> #{message}"
end

def monthly_interest_rate(apr)
  apr.to_i / 12.0
end


prompt("Welcome to Morgage Calculator. What is your loan amount?")
loan_amount = gets.chomp
# loan_amount is a string of an integer represented by P 

prompt("What is your APR? Please answer the integer value of your annual percentage rate.")
apr = gets.chomp

puts "You have entered #{apr} are your APR. We have calculated your monthly interest rate to be: #{monthly_interest_rate(apr)}"

binding.pry
