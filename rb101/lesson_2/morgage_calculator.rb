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



prompt("Welcome to Morgage Calculator. What is your loan amount?")
loan_amount = gets.chomp.to_i
# binding.pry

prompt("What is your APR? Please answer the integer value of your annual percentage rate.")
apr = gets.chomp.to_i

prompt("What is your loan duration in months?")
loan_duration_in_months = gets.chomp.to_i

monthly_payment = monthly_payment_formula(loan_amount, monthly_interest_rate(apr), loan_duration_in_months) 

prompt("Your monthly payment is: #{monthly_payment.round(2)}")

