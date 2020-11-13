# Processing the Problem using 10DIME
#
# Input: 6 numbers from user input
# Output: describe whether the sixth number appears amongst the first 5 numbers given
#
# Definitions: Numbers are integers, not floats.
# Identify Rules: N/A
# Mental Model: I want a program that loops 6 times asking for user input and then searches the first 5 items for a match with the sixth item. 
# Examples/Edge Cases: 
#     - do float versions of the same absolute value count as matches?

# Pseudo-Code:
# - user prompt method that is executed 6 times with case statement or hash table look-up to display which iteration it is in the prompt. Since I already know how to write it with a case statement, I'll try using a Hash.
# - save first 5 inputs into array
# - use enum#include? method to check if sixth value is a match with array obj
# - print match result message using ternary operator

def input_prompt(iteration)
# it's better to use puts here than p because puts will not return a value,
# therefore keeping the method's intent singular
  iterations = %w(1st 2nd 3rd 4th 5th last)
  iteration_str = iterations[iteration-1]
  puts "==> Enter the #{iteration_str} number:"
end

# init a new array called numbers to collect user input
numbers = []

# initialize iteration counter for loop
count = 1
# set counter to only run loop code 6 times
while count <= 6 do
  # call the input_prompt method and pass into params the iteration count
  input_prompt(count)
  # save user input into numbers array
  numbers << gets.chomp.to_i
  # increment iteration counter
  count += 1
end

# remove last value of array and search array for match: 
last = numbers.pop
if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end
exit



