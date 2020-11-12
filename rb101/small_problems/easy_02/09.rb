name = 'Bob'
# assign the String representation 'Bob' to the variable name, creating a new string Object (literal?)

save_name = name
# assign the value of the name variable to a new variable called save_name. Both variables point to the same object.

name.upcase!
# call the String#upcase! method on the String object referenced by the name variable. This method is mutating, therefore, we have modified the object to be: 'BOB'. Since the object that the variable save_name is referencing is this very same object that we have now mutated, we expect that printing save_name will also now print: 'BOB'.

puts name, save_name
