# EX 5
# What will the following code print? 
# Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# ANSWER
# the `meal` method definition returns nil since the last line executed in the
# method is a `puts` invocation, which always returns `nil`.  
# The `p` invocation in line 10 will output the result returns by the `meal` 
# invocation, which is `nil`.
# However, the `puts` invocation in line 6 will be executed before the value is
# returned, therefore printing `'Dinner'` before `nil`.
# It's worth noting that the `p` method will actually output `nil`, whereas a
# `puts` invocation with `nil` would not output `nil`, it would simply not
# print out anything. 

