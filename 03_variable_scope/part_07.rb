# EXERCISE 7
# ==========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|  
  a = element
end

puts a

# ANSWER
# ======
# On line 6, we instantiate the `a` variable so that it references the 
# integer object `7`.
# On line 7, we instantiate the `array` variable so that it references 
# an array object containing the values `1`, `2`, and `3`.
# On line 13, we output the variable `a`.
# In lines 9 through 12, we invoke the `each` method on the `array`
# variable.  The `element` variable is passed into the block.
# On line 10, we assign a variable `a` to the value referenced
# by the block-local variable `element` in each iteration.  
# Ruby blocks do not leak their inner scope to the surrounding scope.
# HOWEVER, variables defined in an outer scope appear inner scope.
# Therefore, the variable `a` on line 10, will be taken to mean the same object
# referenced in line 6.  Reassigning it to a new object in line 10 
# would have the same effect as if we did that outside of the block's 
# inner scope.  And remember... it is being reassigned and not 
# modified because numbers are immutable in ruby.  

# Therefore, `puts a` will output the value assigned to `a` in the
# last iteration of the `each` method's invocation, which is the number `3`.


