# EXERCISE 4
# ==========
# In the previous exercise, you learned that the `while` loop returns `nil`
# unless `break` is used. Locate the documentation for `break`, and determine 
# what value `break` sets the return value to for the `while` loop.

# ANSWER
# ======
# Go to ruby-doc.org and consult the Core API (for version 2.4.4, which 
# we are using).  Follow the 'control expressions' link under the 'New to Ruby' 
# section.  Scroll to the section on the `break` statement.

# `break` sets the return value of the `while` loop to the value provided to
# `break` at the moment the `break` statement breaks us out of the expression.
# If `break` is not supplied a value, the `while` loop returns `nil`.
# See below for example:

counter = 0
test =  while counter < 10 do 
  counter += 1
  break counter if counter == 4 # Will set the return value of the
                                # `while` loop to the value to which
                                # `counter` is assigned at the moment
                                # in which the `break` statement
                                # breaks us out of this `while` loop
end

p test # => 4

