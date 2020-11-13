# 10DIME:

# Input: two positive integers from user
# Output: the result of performing each operation on the two int
#
# Definitions: The exercise asks for the following operations:
# - addition, subtraction, product, quotient, remainder, and power
#
# Identify rules: N/A
# Mental Model: I want a method that takes two integers, saves them into variables, and then outputs the result from operations
# Examples/Edge Cases: - the question asks for the remainder not the modulus? 

# Pseudo-Code:
# - user prompt for two integers
# - save integers
# - perform calculations and display in same line

def prompt(msg)
  puts "==> #{msg}"
end

prompt('Enter the first number:')
num1 = gets.chomp.to_i 

prompt('Enter the second number:')
num2 = gets.chomp.to_i

prompt("#{num1} + #{num2} = #{num1 + num2}")
prompt("#{num1} - #{num2} = #{num1 - num2}")
prompt("#{num1} * #{num2} = #{num1 * num2}")
prompt("#{num1} / #{num2} = #{num1 / num2}")
prompt("#{num1} + #{num2} = #{num1.remainder(num2)}")
prompt("#{num1} * #{num2} = #{num1 ** num2}")



