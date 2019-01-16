# EXERCISE 8
# ==========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

array = [1, 2, 3]

array.each do |element|
  a = element
  #p a.object_id
end

puts a

# ANSWER
# ======
# If the previous exercise was designed to enforce the understanding 
# of local variable scope in block methods, this exercise is designed 
# to enforce the understanding of block-level variable scope at the
# surrounding level.

# Although local variables are within the scope of block methods, block methods
# restrict the scope of its variables to the block itself.

# Therefore, line 12 will give us a `NameError` since ruby will not be 
# able to find a variable `a`, or method `a` in the top level scope.

# FUN/ NOT SO OBVIOUS FACT
# the code in line 9 is not reassigning `a` to the next value referenced by
# `element` since there is no local variable `a` initialized in a scope 
# external to scope of that block. It is in fact initializing a 
# variable `a` every time.

