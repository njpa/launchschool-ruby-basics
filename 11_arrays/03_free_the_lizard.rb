# EX3
# ===
# In the code below, an array containing different types of pets is assigned 
# to `pets`. Also, the return value of `pets[2..3]`, which is 
# `['fish', 'lizard']`, is assigned to `my_pets`.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

# Remove `'lizard'` from `my_pets` then print the value of `my_pets`.
# Expected output:
# >> I have a pet fish!

# ANSWER
# ======
# The problem asks us to mutate `my_pets` so that the last element in the
# array is removed.  The `Array#pop` method does just that when invoked on
# an array. Additionally, we are expected to interpolate the element in a 
# string.  
#
my_pets.pop.to_s
puts "I have a pet #{my_pets[0]}"

