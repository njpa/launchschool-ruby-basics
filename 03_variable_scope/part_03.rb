# EXERCISE 3
# ==========
# What will the following code print, and why? Don't run the code until 
# you have tried to answer.

a = 7

def my_value(c)
  a = c
end

my_value(a + 5)
puts a

# ANSWER
# ======
# The method definition spanning lines 8 through 10 will instantiate a variable
# `a` which is local to the method only.  This variable is not visible at the
# top level, nor will the variable `a` defined in the top level be visible 
# within this method definition.  
# The method parameter `b` will 
# reference a new object created when the argument expression `a+5` is 
# passed in to the method invocation in line 12.  `b` will therefore point
# to the value `12`.  The `a = c` expression will then point the `a` variable
# to this same object.
# At no point in this procedure is the `a` variable in the local scope
# of the top level reassigned to a different object.
# Thus, `puts a` will simply output the original value, `7`
