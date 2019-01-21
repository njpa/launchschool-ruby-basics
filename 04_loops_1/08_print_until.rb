# EXERCISE 8
# ==========
# Given the array of several numbers below, use an `until` loop to 
# print each number.

numbers = [7, 9, 13, 25, 18]

# The expected output is:
# 7
# 9
# 13
# 25
# 18

# ANSWER
# ======
# We could achieve this goal without using a counter variable by using 
# the size of the given array as a criteria.  We could invoke the `Array#shift`
# method on `numbers` to (1) return the value at the beginning of the array,
# and (2) remove that element from the array and shift all other elements
# one slot towards the beginning.  
# We can keep on doing this until `numbers` is empty.  The condition of the 
# `until` loop could check for this and stop iterating when the condition
# is truthy.
# N.B. We should keep in mind that this is a "destructive" approach in that
# the given array will be mutated.  We can proceed since there is no mention
# of leaving the `numbers` array intact in the requirements. 

until numbers.size == 0
  puts numbers.shift
end

# ALTERNATIVE
# We could also use a counter variable to keep track of the iterations
# and use a comparison to the size of the array (rather than a fixed 
# number).
# The counter variable would be used to reference the index at which
# we would like to index the element of the array in order to output it.

numbers = [7, 9, 13, 25, 18]

count = 0

until  count == numbers.length
  puts numbers[count]
  count += 1
end

