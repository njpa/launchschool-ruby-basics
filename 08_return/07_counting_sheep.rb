# EX 7
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# ANSWER
# The `times` method is invoked on the `5` integer, and a block is passed in
# with a block parameter named `sheep`.  This block parameter will reference
# the current iteration.  The `puts` invocation executed in line 7 will output
# the current iteration.
# N.B.:  The index used by the `Integer#times` method is zero-based.
# The code will therefore print
# >> 0
# >> 1
# >> 2
# >> 3
# >> 4

# Additionally, the invocation of the `times` method will return the same 
# object on which it was called. This can be proved by the following code:

a = 1
b = a.times { |_x| }
p a.object_id == b.object_id  # => true

# Therefore, since line 11 is invoking `puts` passing in the result value of 
# the invocation of `count_sheep`, the value `5` will also be printed out.  
# This will leave us with: 
# >> 0
# >> 1
# >> 2
# >> 3
# >> 4
# >> 5

