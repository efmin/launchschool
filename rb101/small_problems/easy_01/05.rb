# pseudo code:
# I need to change my input string into an array of arrays with each word in its own array
# Then I will call reverse on the array
# Return the result as as string


def reverse_sentence(str)
  str.split.reverse.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
