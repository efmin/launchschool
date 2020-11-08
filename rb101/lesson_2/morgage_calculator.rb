require 'pry'

def prompt(message)
  puts ">> #{message}"
end

def monthly_interest_rate(apr)
  ( apr / 12.0 ) * 0.01
end

def monthly_payment_formula(loan_amount, monthly_interest_rate, loan_duration_in_months)
  loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
end

positive_value_error = 'Invalid input. Please enter a positive value.'

prompt('Welcome to Morgage Calculator!')
prompt('What is your loan amount?')

loan_amount = ''
loop do
  loan_amount = gets.chomp.to_f
  break if loan_amount > 0
  prompt(positive_value_error)
end


prompt('What is your annual interest rate?')
prompt('Please answer with the integer value of your rate.')

apr = ''
loop do
  apr = gets.chomp.to_f
  break if apr > 0 
  prompt(positive_value_error)
end

prompt("What is your loan duration in months?")
loan_duration_in_months = gets.chomp.to_i

monthly_payment = monthly_payment_formula(loan_amount, monthly_interest_rate(apr), loan_duration_in_months) 

prompt("Your monthly payment is: #{monthly_payment.round(2)}")

