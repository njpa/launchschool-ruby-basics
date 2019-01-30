# EX 10
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# ANSWER
# Invoking `puts` in line 13 passing in the method call `tricky_number` will
# print out the results returned by the method call.
# In the method signature, the `if true` condition will always evaluate to 
# `true`, thereby executing the `number = 1` statement since the `if` clause
# will be evaluated.
# Since this will be the last line evaluated in the method, `tricky_method`
# will return the resulting valued of the evaluation of the last line,
# in this case, it is the integer `1`. 

# The code will therefore printout:
# >> 1

