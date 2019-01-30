# EX 10
# =====
# The variables below are both assigned to arrays. The first one, `names`, 
# contains a list of names. The second one, `activities`, contains a list 
# of activities.  Write the methods `name` and `activity` so that they each 
# take the appropriate array and return a random value from it. Then 
# write the method `sentence` that combines both values into a sentence 
# and returns it from the method.

=begin
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
=end

# Example output:
# >> George went walking today!

# ANSWER
# ======
# The `name` method definition will take in one argument and return
# the result of the invocation of the `Array#sample` method on that array.
# The `activity` method definition will have the same features.
# The `sentence` method definition will take two arguments and return
# a string interpolating both arguments.

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name}  went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))

