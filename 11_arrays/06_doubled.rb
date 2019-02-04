# EX 6
# ====
# In the code below, an array containing the numbers 1 through 5 is assigned 
# to `numbers`.

numbers = [1, 2, 3, 4, 5]

# Use `Array#map` to iterate over `numbers` and return a new array with each 
# number doubled. Assign the returned array to a variable named 
# `doubled_numbers` and print its value using `#p`.

# ANSWER
# ======
# The `Array#map` method will iterate over every element of the array, 
# invoking on every element in the array the block that was passed in 
# to the method as argument.  The method invocation will return 
# a new array containing containing the elements returned by each invocation.

doubled_numbers = numbers.map { |x| x * 2 }
p doubled_numbers

