# EX 8
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# ANSWER
# the last line executed in the `count_sheep` method evaluates to `10`.
# this means that the call to the `count_sheep` method will return
# `10` and will be print out by the `puts` invocation.
# However, before this happens, the block passed into the `times` method
# invoked on line 6 will invoke in each iteration the `puts` method passing
# in the block reference which points at the index of the current iteration.
# this block will print out the following:
# >> 0
# >> 1
# >> 2
# >> 3
# >> 4
# This will be followed by:
# >> 10

