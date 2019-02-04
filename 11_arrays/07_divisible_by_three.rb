# EX 7
# ====
# In the code below, an array containing five numbers is assigned to `numbers`.

numbers = [5, 9, 21, 26, 39]

# Use `Array#select` to iterate over `numbers` and return a new array that 
# contains only numbers divisible by three. Assign the returned array to a 
# variable named `divisible_by_three` and print its value using `#p`.

# ANSWER
# ======
# `Array#select` will iterate over every element of the calling array,
# and evaluate the logic provided in the block as argument to the method.
# The method invocation will return a new array containing elements from
# the calling array for which the logic in the block evaluates to `true`.
# To check every element for its divisibility by three, the code will
# apply the `Integer#%` method on the block parameter (which references 
# the element in the current iteration) and check if the return 
# value equals `0`.  If it does (meaning that the number is divisible by three), that current element will be added to the array which is returned by the 
# `select` invocation.

divisible_by_three = numbers.select { |x| x % 3 == 0 }
p divisible_by_three

