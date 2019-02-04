# EX1
# ===
# In the code below, an array containing different types of pets is assigned 
# to `pets`.

pets = ['cat', 'dog', 'fish', 'lizard']

# Select `'fish'` from `pets`, assign the return value to a variable named 
# `my_pet`, then print the value of `my_pet`.

# ANSWER
# ======
# The `Array#index` method returns the index of the first object in the 
# caller such that the object is equal to the object provided as argument.
# We can then access the `'fish'` object in the `pets` array by referencing
# the index number.

fish_index = pets.index('fish')
my_pet = pets[fish_index]
puts "I have a #{my_pet}!"

# ALTERNATIVE
# ===========
# `Array#[]` returns the element in an array at the specified index.
my_pet = pets[2]
puts "I have a #{my_pet}!"

