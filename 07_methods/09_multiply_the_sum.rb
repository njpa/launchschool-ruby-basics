# EX 9
# ====
# Write the following methods so that each output is `true`.

=begin
puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
=end

# ANSWER
# ======
# in order for the statement in line 5 to evaluate to `true`, the 
# `add` method could add both arguments and return the result of the 
# sum.
# This is further confirmed by the statement in line 6.
# In order for the statement in line 7 to evaluate to `true`, we
# need a method definition which takes in two parameters and returns
# the product of the parameters.


def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

