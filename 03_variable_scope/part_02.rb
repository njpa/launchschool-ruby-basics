# EXERCISE 2
# ==========
# What will the following code print, and why? Don't run the code 
# until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

# ANSWER
# ======
# This is the exact same scenario as the previous exercise.  It is 
# worth noting that it is perfectly alright to instantiate the `a` variable
# in the local scope of `my_value` method even though there is already
# a variable `a` defined at the local scope of the code.  This is because
# local variables outside the method definition are not visible (nor 
# available inside the method definition.
