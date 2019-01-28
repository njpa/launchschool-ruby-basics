# EX 2
# ====
# Write a method named print_me that returns 
# `"I'm printing the return value!"` when using the following code.

# puts print_me

# ANSWER
# ======
# In this problem, out method is expected to return a string (and not
# `nil` as in the previous example.  So, inside of our method definition
# we will be returning the string itself rather than calling `puts`.

def print_me
  "I'm printing the return value!"
end

puts print_me

