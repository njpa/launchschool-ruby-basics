# EXERCISE 6
# ==========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7

def my_value(b)
    b = a + a
end

my_value(a)
puts a

# ANSWER
# ======
# Here's what's going on:
# On line 7, we instantiate the variable `a` so that it references a number
# object `7`.  We invoke the `my_value` method passing in the `a` variable
# as an argument.
# In the method definition, `b` is set to reference the same object as `a`
# references.  On line 8, we attempt to reassign the variable `b` to a 
# new object, which will be the result of the expression `a + a`. 
# Now, since the method definition cannot see nor access the variable `a` 
# at the top level, ruby will throw a `NameError` since it will not find 
# a local variable (or method) named `a` in `my_value`.  

