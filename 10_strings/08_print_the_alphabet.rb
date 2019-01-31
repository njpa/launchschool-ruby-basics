# EX8
# ====
# Using the following code, split the value of `alphabet` by individual 
# characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'

# ANSWER
# ======
# The `String#split` method will divide the string on which it is invoked
# into substrings based on the delimiter provided to it as argument.
# It will return these substrings in an array object.
# If an empty string is provided as argument, it will simply separate
# a string into single character strings.
# We will invoke `split` on `alphabet` passing in `''` and then we will
# invoke `puts` passing in the resulting array to it.  `puts` will simply
# print out every element of the array in a separate line, thereby meeting
# the problem's requirements.

puts alphabet.split("")

# ALTERNATIVES
# ============
# The `String#each_char` method passes each character in the string
# on which the method is invoked into a block.
puts "-- ALTERNATIVE" 
alphabet.each_char { |x| puts x }

# The `String#chars` method is shorthand for `alphabet.each_char.to_a`.
puts "-- ALTERNATIVES 2" 
puts alphabet.chars

# FUN FACT
# ========
# Invoking the `Array#to_a` on the result of anything on which `each`
# was called on, will return an array.

(1..3).each.to_a    # => [1, 2, 3]

