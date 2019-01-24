# EX 1
# ====
# Write a program that asks the user to type something in, after which your program 
# should simply display what was entered.

# $ ruby repeater.rb
# >> Type anything you want:
# This is what I typed.
# This is what I typed.

# ANSWER
# ======
# First of all, we will invoke the `Kernel#puts` method to output our request to
# the user.
# We will invoke the `Kernel#gets` method to return what the user has typed in the
# standard input and reference a variable `input` to that text.  We will invoke
# the `String#chomp` method on the return value of the `gets` method so that we 
# can remove the carriage return from the string.

puts ">> Type anything you want:"
input = gets
puts input
p input

# NOTES
# =====
# It wasn't actually necessary to invoke `chomp` on the result of the `get` method
# invocation since we were outputing the text using `puts`.

