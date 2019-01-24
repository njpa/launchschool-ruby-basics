# EXERCISE 10
# ===========
# Your friends just showed up! Given the following array of `names`, 
# use a `for` loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

# The expected output is:
# Hello, Sarah!
# Hello, John!
# Hello, Hannah!
# Hello, Dave!

# ANSWER
# ======
# We can achieve this by iterating over the `friends` array using 
# the `for` loop.  The `for` loop will use a variable `friend` to reference 
# the element in the collection at the current iteration.
# We will use string interpolation to insert each element of the array
# into a string.

for friend in friends do
 puts "Hello, #{friend}!" 
end

# ALTERNATIVE
# ===========
# We can achieve this by iterating over the `friends` array by invoking 
# the `each` method on `friends`.  We can pass in a block to the `each` method
# which will handle the logic of greeting each friend.
# We will use string interpolation to insert each element of the array
# into a string.

friends.each { |friend| puts "Hello, #{friend}!" }

