# EX 9
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# ANSWER
# the invocation of `p` passing it the method call `count_sheep` will output
# the return value of the `count_sheep` method.
# In this case, since the last line executed in the method is the `times` 
# invocation on the integer `5`, the method will return `5`.
# However, the block in lines 6-8 contains a return statement which is executed
# if the `sheep` block parameter is greater than or equal to `2`.
# This means that the `times` invocation on `5` will iterate 3 times before 
# the `return` statement exits, not only the block, but the method.
# The output will therefore be:
# >> 0
# >> 1
# >> 2
# Furthermore, the `break` statement will not let the `times` method return the 
# original value on which it was called on.  This means that `5` will not be 
# returned by the method.  Instead, `nil` will be returned since nothing
# was provided to the `return` statement.
# And, since we are invoking `p` and not `puts` in line 14, this `nil` will be 
# printed out, leaving us with:
# >> 0
# >> 1
# >> 2
# >> nil

