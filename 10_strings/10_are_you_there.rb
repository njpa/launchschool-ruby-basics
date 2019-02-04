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

puts colors.split.include?("yellow")    # => true
puts colors.split.include?("purple")    # => false

# b) or we can simply invoke `String#include?` on `colors` passing in
# the criteria string.  This method will return `true` if the provided
# string is contained in the string on which it is called.

puts colors.include?("yellow")    # => true
puts colors.include?("purple")    # => false

# FURTHER EXPLORATIONS
# ====================
# Let's say `color` is changed to the following value:

colors = 'blue boredom yellow'

# and we invoke `#include?` as we did before:

puts colors.include?('red')   # => true

# What will the output be? Why?

# ANSWER
# ======
# The `String#include?` method will return `true` since it will find the
# string `'red'` within the string `colors`.
# If this is undesirable, we can instead invoke `Array#include?` on an 
# array of colors (obtained by invoking the `String#split` method on
# the original string of colors).  This will check that `'red'` is an 
# element in the array, rather than checking if `'red'` is a substring
# of the color string.

colors = colors.split
puts colors.include?('red')    #  => false



