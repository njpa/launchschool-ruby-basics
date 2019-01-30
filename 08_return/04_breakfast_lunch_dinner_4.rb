# EX 4
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# ANSWER
# The code will first print `'Dinner'` after `puts` is invoked in line 6, and
# then the method will return the string `'Breakfast'` which will be output
# by the `puts` call in line 10.

# >> Dinner
# >> Breakfast

