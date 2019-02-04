# EX2
# ===
# In the code below, an array containing different types of pets is assigned 
# to `pets`.

pets = ['cat', 'dog', 'fish', 'lizard']

# Select `'fish'` and `'lizard'` from `pets` at the same time, assign the 
# return value to a variable named `my_pets`, then print the value of 
# `my_pets`.

# ANSWER
# ======
# The `Array#slice` method returns a sub array, of a specific lenght and 
# starting at a specific index, of the caller. 

my_pets = pets.slice(2,2)
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!" 

# ALTERNATIVES
# ============
# It is also possible to use a range to reference array elements by index
# Since the problem asks us to select `'fish'` and `'lizard`' at the same,
# time, this is a more adequate solution:

my_pets = pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!" 

# We can also use array destructuring, allows us to pattern match the array
# with new variable definitions, thereby assigning specific elements of the 
# array to specific variables all in one operation (actually, not really....
# all in one line of code):

pets = ['cat', 'dog', 'fish', 'lizard']
feline, canine, *my_pets = pets 
#
# the `*` (splat operator) allows us to take in a variable number of 
# elements and collect it into an array.

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!" 

