# 10DIME

# Input: a string containing one or more words
# Output: the given string with words that >= 5 chars reversed
# Definitions: Strings are letters and spaces

# Pseudocode:
# - change input string into an array, iterate through array and reverse words that are >= 5 characters
# change back into string



def reverse_words(str)
  result = str.split.map do |word| 
    word.size >=5 ? word.reverse! : word
  end
  result.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
