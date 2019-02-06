# EX4
# ===
# Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, 
# to the `pets` hash. After doing so, she realizes that her dogs Sparky and 
# Fido have been mistakenly removed. Help Magdalena fix her code so that all 
# three of her dogs' names will be associated with the key `:dog` in the `pets` hash.

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

# ANSWER
# ======
# The value paired with the `:dog` key in the `pets` hash is an array of String
# objects.  Performing element assignment on that key will move the assignment
# from that array to whatever value is provided to the assignment.  
# And this is what happens when we reassign `pets[:dog]` to reference `'bowser'`.
# In order to keep as an array the value of the `:dogs` key, we can
# specify an index number in the element assignment so that the string is inserted
# into that array.  
# We must ensure that this index number does not reference a slot that is taken.
# We will use `2`, since we want to append the string to the array.

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog][2] = 'bowser'
 
p pets # =>  {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}
   
# ALTERNATIVE
# ===========
# We can opt not to use element assignment, and simply focus on adding the
# element to the array directly by referencing it through `pets[:dog]` and then
# invoking any method of the `Array` class on it:

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# in this example, we invoke the `#push` method on `pets[:dog]`
pets[:dog].push('bowser')
 
# or use the shovel operator
pets[:dog] << 'bowser'

# likewise, the `#insert` method can do the same work
pets[:dog].insert(2, 'bowser')
 
# unshift can also insert the string in the first element of the array and move
# the remaining elements on slot index further up.
pets[:dog].unshift('bowser')

