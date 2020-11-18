def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)


# Playing around with default params and noticing another moment in which my intuitive brain takes over and assumes a truth that does not hold. I assumed that Ruby would fill in the params with my passed-in args from left-to-right and therefore the above method would throw a "Missing Argument" error as `e` would not have an args. My intuitive expectation was this: `[1, 2, 3, 201, ???]`. 

#   In actuality, Ruby does fill in the params from left-to-right but it fills in the args with no default params first.
