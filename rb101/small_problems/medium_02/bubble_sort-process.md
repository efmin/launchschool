## PEDAT + 10DIME

### Process with 10DIME
Input: an array of at least two elements

Output: the same array object, sorted

Definitions: A bubble sort operates by comparing each el to the next; swapping if the first el is greater than the second and continuing until last el in collection. Then it repeats this pass-through of the collection until zero swaps are needed.

Identify rules: Items must be sorted consecutively. Iteration can only stop once zero swaps are needed.

Meditative Mental Model: I want an algorithmn that passes through each element in the array and if the first element is greater than the next, I will swap the two. One pass through is completed if we reach the last element. The last element will be de-incremented by 1 index value per pass-through because we will know that that last element of that pass-through is the greatest. I will have to track whether any swaps are done during a pass-through with a boolean?


Edge Cases/Test Cases: 
  - What if the array is empty? 
    - problem given says it will contain at least 2 elements)
    
  - What if an element is a false object? What about nil?
    - this will be covered by the next edge case below:

  - What is data types in array object are different?
    - I need a method that validates the homogeny of my array elements so that I don't get an error

  - What about comparison within the same datatype but the objects are not comparable? 
    - I will need a validation method that checks if the objects in an array of uniform objects will respond_to?("<")

  - What about capitalized vs non-capitalized Strings?
    - Ruby will treat non-capitalized as greater: 
    - "e" > "E" # returns true
 
 
### Data Structures
- Working with array object
- Maybe try to use * in my method params?

### Algorithmn Pseudo-Code
