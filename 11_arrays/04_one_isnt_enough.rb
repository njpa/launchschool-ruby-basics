# EX4
# ===
# Using the code below, select `'dog'` from `pets`, add the return value to 
# `my_pets`, then print the value of `my_pets`.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

# Expected output:
# >> I have a pet fish and a pet dog!

# ANSWER
# ======
# To add `'dog'` to `my_pets`, we must first access it using array element
# referencing.  The element is at index number 1.
# We can use the `Array#push` method, or shovel operator `<<` to add the 
# provided argument (in this case the element `'dog'`) to the end of the 
# caller.

my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

