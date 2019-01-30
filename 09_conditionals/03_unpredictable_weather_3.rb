# EX 3
# In the code below, `sun` is randomly assigned as 'visible' or 'hidden'.
  
sun = ['visible', 'hidden'].sample

# Write an `if` statement that prints `"The sun is so bright!"` if `sun` equals 
# `visible`. Also, write an `unless` statement that prints 
# `"The clouds are blocking the sun!"` unless `sun` equals `visible`.

# When writing these statements, take advantage of Ruby's expressiveness 
# and use statement modifiers instead of an `if...end` statement to print 
# results only when some condition is met or not met.

# ANSWER
# We will write an `if` statement with a condition checking for equality `sun`
# between `sun` and `"visible"`.
# This `if` clause will be added as a statement modifier (a statement 
# modifier is simply a condition appended to a statement).
# We will invoke the `puts` method passing in 
# `"The clouds are blockin the sun!"`, appending a statement modifier using 
# `unless` and checking for equality between `sun` and `'visible'`.

p sun

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

