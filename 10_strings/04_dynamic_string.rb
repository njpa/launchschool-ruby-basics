# EX4
# ===
# Modify the following code so that the value of `name` is printed 
# within `"Hello, !"`.

name = 'Elizabeth'

puts "Hello, !"

# ANSWER
# ======
# We interpolate the variable `name` within the string being passed to the 
# `puts` invocation.

puts "Hello, #{name}!"

# EXPLANATION
# ===========
# With string interpolation, we can invoke a variable or method within
# a string and Ruby will automatically invoke `to_s` on the value.

