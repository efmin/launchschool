require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('morgage_calculator_messages.yml')
binding.pry

def prompt(message)
  puts ">> #{message}"
end

def monthly_interest_rate(apr)
  ( apr / 12.0 ) * 0.01
end

def monthly_payment_formula(loan_amount, 
                            monthly_interest_rate, 
                            loan_duration_in_months)
  loan_amount * 
  (monthly_interest_rate / 
  (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
end

# positive_value_error = 'Invalid input. Please enter a positive value.'

prompt(MESSAGES['welcome'])
prompt('What is your loan amount?')

loan_amount = ''
loop do
  loan_amount = gets.chomp.to_f
  break if loan_amount > 0
  prompt(MESSAGES['positive_value_error'])
end


prompt('What is your annual interest rate?')
prompt('Please answer with the integer value of your rate.')

apr = ''
loop do
  apr = gets.chomp.to_f
  break if apr > 0 
  prompt(MESSAGES['positive_value_error'])
end

prompt("What is your loan duration in months?")

loan_duration_in_months = ''
loop do
  loan_duration_in_months = gets.chomp.to_f
  break if loan_duration_in_months > 0
  prompt(positive_value_error)
end

monthly_payment = monthly_payment_formula(loan_amount,
                                          monthly_interest_rate(apr), 
                                          loan_duration_in_months) 

prompt("Your monthly payment is: $#{monthly_payment.round(2)}")
