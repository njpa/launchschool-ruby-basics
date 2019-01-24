# EXERCISE 9
# ==========
# The code below shows an example of a for loop. 
# Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
#  puts i
end

# ANSWER
# ======
# The statement `1..100` evaluates to an iterable range of 100 elements.
# All we need to do is add a condition to the the `puts i` which executes
# the `puts i` statement only when the `i` value is an odd number.
# A simple `if` statement added to the `#puts`.
# We can use the `Integer#%` method to obtain the remainder of the division
# of the number by 2.  We do this by invoking the method on the `i` object.
# If the remainder is equal to `0`, then we know the value of the `i`
# variable is even.

for i in 1..100
  puts i if i % 2 == 1
end

# ALTERNATIVE
# ===========
# We could also use the `Integer#odd?` method.  This method returns `true`
# if the integer on which it is invoked is an odd number.

