5.step(to: 10, by: 3) { |value| puts value }

# call numeric#step method on INT 5 with params telling method to step to 10 by increments of 3. However, the params are sent in reversed order than shown in the docs. I think it'll still work though because we have keywords creating an associative relationship between the `to:` symbol and the `10` value and between the 'by:' symbol to the `3` value. Therefore, we expect:
#
# return will be 5 (because the method returns self)
# and puts value will be 8
