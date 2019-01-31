# EX5
# ===
# Using the following code, combine the two names together to form a full 
# name and assign that value to a variable named `full_name`. 
# Then, print the value of `full_name`.

first_name = 'John'
last_name = 'Doe'

# Expected output:
# >> John Doe

# ANSWER
# ======
# We will initialize a variable `full_name` and have it reference the result
# of appending `first_name` to `" "` and the result of that appended to
# `last_name`.

full_name = first_name + " " + last_name

puts full_name

# INTERESTING
# ===========
# The `+` operator is actually a method of the `String` object.
# In doing this, we are actually creating a new string and having the variable
# reference that new object.
# An alternative is to mutate the existing string by invoking the 
# `String#<<` method, which is destructive and mutates the string by appending
# the argument to the original object.

# FURTHER EXPLORATIONS
# ====================
# Can you think of at least two additional ways to combine a first and last 
# name into a full name?

# We can invoke the `Array#join` method on an array containing two elements
# the first name and the last name) and pass in an empty space character as
# the argument.

puts ["John", "Doe"].join(" ")    # => John Doe

# We can also use the percent string `%w` to create the array object, 
# and have `Array#*` invoked on that passing it an empty space character `' '`.
%w(John Doe) * " "            # => John Doe

