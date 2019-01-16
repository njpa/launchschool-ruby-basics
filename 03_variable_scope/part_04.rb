# EXERCISE 4
# ==========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# ANSWER
# ======
# The method definition in lines 8 through 12 will mutate the `b` variable
# that is locally scoped in that method definition.  It is important to note
# that this does not mean that the `b` variable wil be reassigned to a 
# new object.  The object will simply have the value in the specified
# index slot reassigned to the value `'-'`.

# The method invocation in line 12 passes in the variable `a` as an argument,
# thereby pointing the method's parameter `b` to that same object.  Since,
# `b` is not reassigned to a new object before the mutation takes place,
# the change will affect the `a` variable, which is pointing to the same
# object which is being mutated.  `puts a` will therefore output 
# `"Xy-zy"`

# NOTES
# =====
# One way of deducing that `a` will be mutated is by remembering that strings,
# unlike numbers, are mutable in ruby.  This means that assignment of a number
# will merely change the object that a variable references.  
# FUN FACT
# ========
# The `b[2]` expression is actually a method invocation (`String#[]`).

