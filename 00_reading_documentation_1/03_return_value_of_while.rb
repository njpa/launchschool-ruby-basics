# QUESTION
# ========
# Using the ruby documentation, determine what value a while loop returns.

# ANSWER
# ======
# The result of a while loop is `nil` unless `break` is used to 
# supply a value.  `break` accepts a value that supplies the result
# of the expression it is "breaking" from.  Run the code below for 
# an example:

x = 1

test = while x < 10
  p x
  x += 1
  break "I got returned by the while loop!" if x == 5
end

p test   # => "I got returned by the while loop!"
