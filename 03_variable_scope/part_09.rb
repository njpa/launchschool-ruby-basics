# EXERCISE 9
# ===========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7

array = [1, 2, 3]

array.each do |a|
    a += 1
end

puts a

# ANSWER
# ======
# This is what is happening:
# We initialize the `a` variable on line 6 and point it to the number 
# object `7`.  
# We initialize the `array` variable and point it 
# to the array object `[1, 2, 3]`.
# On line 8, we invoke `Array#each` on `array` passing in a block 
# with a block parameter `a`.  
# The following things should be taken into consideration:
# - the block parameter `a` will be a variable local to this block.
# - This `a` variable will pointing to a different
# object than the `a` variable on line 6.  In fact, with each iteration
# there will be a new assignment (this can be checked by invoking 
# `object_id` on `a` in the block's body).  
# Thus, even though block-level variable scope can extend to the surrounding 
# scope, in this particular case,  there will be no impact on the `a` variable 
# originally initialized on line 7.
# On line we output the value of the variable `a`, which will be `7`.
#
# IMPORTANT NOTES
# ===============
# This exercise demonstrates the concept of 'shadowing'.  Shadowing occurs
# when a block argument 'hides' a local variable that is defined in 
# the surrounding scope (outside of the block).  Since the outer `a` variable 
# is shadowed by the `a` variable in the block, the `a += 1` statement 
# has no effect on it.
# If we used a different label to represent our block parameter, say `b`,
# the block-level scope could actually see and access the variable `a` 
# in the top-level scope.  And any reassignments to a variable named `a` 
# in the block would consequentially impact the variable `a` defined in the 
# outer block.

