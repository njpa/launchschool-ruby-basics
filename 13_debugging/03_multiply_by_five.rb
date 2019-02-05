# EX3
# ===
# When the user inputs `10`, we expect the program to print 
# `'The result is 50!'`, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number)}!"

# ANSWER
# ======
# The invocation of `multiply_by_five` is passed in a `String` object as 
# argument (the `Kernel#gets` method always reads the user's input as a string).
# As the `multiply_by_five` method signature attempts to invoke an `#*`
# method on the method parameter (which in this case references a String 
# object), Ruby will invoke the `String#*` method on the string thereby 
# returning a new string with `n` copies of the caller.
# To fix the issue, we must invoke `String#to_i` on the value returned from
# `gets.chomp`.  This will store an `Integer` object rather than a `String`
# object in the variable `number`, thereby ensuring that the `Integer#*` 
# method is invoked on the method parameter.

