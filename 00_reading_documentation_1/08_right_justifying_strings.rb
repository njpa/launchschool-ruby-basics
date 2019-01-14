# EXERCISE 8
# ==========
# Use the ruby documentation for the `String` class to determine which method 
# can be used to right justify a `String` object.

# ANSWER
# ======
# 1) Go to ruby-doc.org
# 2) Go to the Core API
# 3) follow the link to the `String` class
# 4) do a search on `just` (using the browser's page search funcitonality)
# The `rjust` method returns a new version of the string it is called on with
# a specified amount of padding done by a specified character.  See below:

greet = "Hello, World!"
greet.rjust(20, "*")
  # => "********Hello, World!"

# NOTE
# ====
# This is good time to refer to the method as... the `String#rjust` method.
#
