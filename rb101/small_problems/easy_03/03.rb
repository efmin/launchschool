# 10DIME

# Input: a String from user input
# Output: a String indicating the number  of characters of the user input String, not counting white spaces
# Definitions: N/A
# Identify Rules: not counting white spaces, display the count and the original input word in the output message
# Mental Model: I want to save user input into a variable and split it into letters. Then I will to count all letters. I would like to try to write this as manually as possible.
# Edge Cases: 
# - empty input?

# Pseudo-Code:
# - prompt user, save string input
# - split string into characters
# - iterate through array of characters and see if there are any matches to a white space as: " "
# - subtract white space count from count of letters and output the result in a string 

def count_chars(string)

end

a = 'walk'
p count_chars(a)
p count_chars(a) == 4

b = "walk, don't run"
p count_chars(b)
p count_chars(b) == 13

c = '   '
p count_chars(c)
p count_chars(d) == 0

d = '*&  +='
p count_chars(d)
p count_chars(d) == 4


