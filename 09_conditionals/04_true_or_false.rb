# EX 4
# In the code below, `boolean` is randomly assigned as `true` or `false`.

boolean = [true, false].sample

# Write a ternary operator that prints `"I'm true!"` if `boolean` equals 
# `true` and prints `"I'm false!"` if `boolean` equals `false`.

# ANSWER
# Our ternary operator's first clause (which gets executed if the condition
# evaluates to `true`), will invoke the `puts` method passing it `"I'm true!"`.
# The second clause, will invoke `puts` passing in `"I'm false"`.

p boolean

boolean ? (puts "I'm true!") : (puts "I'm false")

# N.B.
# If we omit the parens in the code in the left and right side of the colon,
# we will get a syntax error since ruby will not be expecting a ':'.
# If we use the explicit parens to wrap the arguments when invoking the methods,
# ruby will know that we are only passing in one argument to the methods 
# and will therefore acknowledge the ':' as syntax required for the ternary
# operator.  Run code below to see.

# boolean ? puts "I'm true!" : puts "I'm false"
