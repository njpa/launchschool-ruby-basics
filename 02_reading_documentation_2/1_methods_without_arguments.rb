# EXERCISE
# ========
# How would you use String#upcase to create an uppercase version of the 
# string "xyz"?

uppercase_version = "xyz".upcase
p uppercase_version   # => "XYZ"

# ANSWER
# ======
# We will invoke the `upcase` method on the string `xyz` and assign a 
# variable to the return value of that invocation.

# N.B.
# ====
# A helpful convention used in the ruby-doc documentation is the notion
# of `-> new_x` as opposed to `-> x` which is provided in the signature  of 
# the method.  A return value of `new_x` indicates that the method will not 
# mutate the object it is called on and will instead return a new object, 
# whereas a return value of `x` indicates that the method simply mutates 
# the object it is called on.

