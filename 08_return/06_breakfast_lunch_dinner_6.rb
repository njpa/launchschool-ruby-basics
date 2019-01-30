# EX 6
# What will the following code print? 
# Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# ANSWER
# `puts meal` will print out the value returned by the `meal` method.
# The `return` statement in line 6 ensures that the method is exited and that
# the string `'Breakfast'` is returned.  Therefore, the following is printed:
# >> Breakfast

