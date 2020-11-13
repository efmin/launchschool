# 10DIME

# Input: a String from user input
# Output: a String indicating the number  of characters of the user input String, not counting white spaces
# Definitions: N/A
# Identify Rules: not counting white spaces, display the count and the original input word in the output message
# Mental Model: I want to save user input into a variable and split it into letters. Then I will to count all letters. I would like to try to write this as manually as possible.
# Edge Cases: 
# - empty input?
# - 1 letter

# Pseudo-Code:
# - split string into characters
# - count the characters
# - check if there are any white spaces, if not, return result in a string output
# if there are white spaces: count the white spaces by using (" ") as args to the array#count method. Subtract this count from the total character count. Return result in String output.

def print_count(string)
  chars = string.split('')
  count = nil
  if chars.include?(' ')
    count = chars.count - chars.count(' ')
    puts "There are #{count} characters in \"#{string}\"."
  elsif chars.count == 1
    puts "There is 1 character in \"#{string}\"."
  else 
    count = chars.count
    puts "There are #{count} characters in \"#{string}\"."
  end 
end

a = 'walk'
print_count(a)

b = "walk, don't run"
print_count(b)

c = '   '
print_count(c)

d = '*&  +='
print_count(d)

e = 'a'
print_count(e)
