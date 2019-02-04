# EX10
# ====
# In the code below, two arrays containing several numbers are assigned to two 
# variables, `array1` and `array2`.

array1 = [1, 5, 9]
array2 = [1, 9, 5]

# Compare `array1` and `array2` and print `true` or `false` based on whether 
# they match.

# ANSWER
# ======
# To compare the equality of the arrays, we will use the `==` operator.  
# This will evaluate to `false` becuase, although `array1` and `array2`
# have the same elements, arrays are "ordered" lists, meaning that the 
# position of an element in the array is determined by an index number,
# and in order for two arrays to be equal, they must have the same
# elements, in the same order.

puts array1 == array2

