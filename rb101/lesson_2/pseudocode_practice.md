# Practicing Pseudo-Code Assignment

Write out pseudo-code (both casual and formal) that does the following:

1. a method that returns the sum of two integers
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
3. a method that takes an array of integers, and returns a new array with every other element

1. 
Given two args of Integers, add the two integers and return the result

START

SET num1 in method params
SET num2 in method params

READ num1
READ num2
PRINT num1 + num2 

END 


2.
Given an array of strings.
Call string#join method to concatenate the array of strings into one String
Return String result 

START

SET array_of_strings

READ array_of_strings
PRINT array_of_strings.join 

END 


3.
Given an array of integers.
Iterate through the array and select only odd elements
Save odd elements into new array
Return the new array

START

SET array in method params
SET result array = []

WHILE array
  IF array element index is odd, save into result
  ELSE do nothing
 
PRINT result array


  
