# EX 6
# ====
# Using the following code, capitalize the value of `state` then print the 
# modified value. Note that `state` should have the modified value both before 
# and after you print it.

state = 'tExAs'

# Expected output:
# >> Texas

# ANSWER
# ======
# The problem requires us to have `state` modified before and after printing.
# It has not been hinted that we should create a new variable with the 
# capitalized version of the current value of `'state'`.
# We can therefore assume that we should mutate the string.  The 
# `String#capitalize!` method does just that.

state.capitalize!

puts state

