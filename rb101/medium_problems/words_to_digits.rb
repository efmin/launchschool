# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
#
# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# Pseudo code
# - create a hash table containing the conversion values of string words of integers to corresponding string integers
# - convert the input string into an array of string elements
# - iterate through the array and compare each array el to each hash key (this means I have a nested iteration), replacing the array el with the hash value if the hash key == array object.
# - conver the resulting array back to a string

hash = {
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7'
}

def word_to_digit


end



word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
word_to_digit('Here are some more numbers: one two one ten') == 'Here are some more numbers: 1 2 1 ten'
word_to_digits('onetwooneten') == '121ten'
word_to_digits('one  two  one  ten') == '1  2  1  ten'


