# EX7
# ===
# Given the following code, invoke a destructive method on `greeting` so that 
# `Goodbye!` is printed instead of `Hello!`.

greeting = 'Hello!'
puts greeting

# Expected value:
# >> Goodbye!

# ANSWER
# ======
# The `String#gsub!` method allows us to substitute with a specified string
# all occurences of a specified substring in the string on which it the 
# method is invoked.  This is all done destructively.

greeting.gsub!("Hello", "Goodbye")
puts greeting

