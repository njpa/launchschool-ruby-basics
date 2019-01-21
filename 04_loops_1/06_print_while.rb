# EXERCISE 6
# ==========
# Using a while loop, print 5 random numbers between 0 and 99. 
# The code below shows an example of how to begin solving this exercise.

# numbers = []

# while <condition>
  # ...
# end

# ANSWER
# ======
# The code provided initializas a variable `numbers` referencing an empty
# array.  We can infer that this will be used to store our random
# numbers.  We can also use the size of array as a criteria for the 
# while loop.  In each iteration, we can `push` a random number into the 
# end of the array and the while loop will use the following conditional 
# statement to determine when to stop iterating: `numbers.length < 6`
# To print out the last item of the array, we can invoke the `Array#last`
# method on `numbers` and invoke `puts` to output it.
# Likewise, we can simply invoke `puts` outside of the while loop.  This
# will work because, unlike the `Kernel#p` method, the `IO#puts` method
# will output the each value of an array as a string object, 
# rather than the array itself.

# We will look up the documentation of the `Random::rand` class method.
# The method signature is as follows:
# rand(max) -> number
# We can see that the method takes in one parameter which is most likely
# going to indicate the ceiling for the generation of the random number.
# The ceiling is one number more than the maximing possible number allowed.
# We can therefore generate the required random number with `rand(100)`.

numbers = []

while numbers.length < 5
  numbers.push(rand(100))  # the shovel operator can also be used here
                          # `numbers << rand(99)` to append the values
end

puts numbers

# NOTES
# =====
# the `Array#size` method, which is an alias for `Array#length` can also
# be invoked in the conditional statement used in line 36.

