# EX 10
# =====
# Using the following code, print `true` if `colors` includes the color 
# `'yellow'` and print `false` if it doesn't. Then, print `true` if `colors`
# includes the color `'purple'` and print `false` if it doesn't.

colors = 'blue pink yellow orange'

# Expected output:
# >> true
# >> false

# ANSWER
# ======
# We can either
# a) create a string object containing each color substring by invoking
# the `String#split` method on `colors`, and then invoke `Array#include?`
# on the array passing in the string `'yellow'` to check if the array
# contains the element `'yellow'`.

puts colors.split.include?("yellow")
puts colors.split.include?("purple")

# b) or we can simply invoke `String#include?` on `colors` passing in
# the criteria string.  This method will return `true` if the provided
# string is contained in the string on which it is called.

puts colors.include?("yellow")
puts colors.include?("purple")

