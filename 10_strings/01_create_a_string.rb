# EX 1
# ====
# Create an empty string using the String class and assign it to a variable.

# ANSWER
# ======
# The `String` class has a public method `String::new` which creates
# an empty string when it is invoked.
# So, we simply call `new` on the `String` class and the return value
# is an empty string.

new_string = String.new()

p new_string

