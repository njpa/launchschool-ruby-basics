# EX 2
# ===
# Assume you have this Array:

a = %w(a b c d e)

# How would you use `Array#insert` to insert the numbers `5`, `6`, and `7` 
# between the elements with values `'c'` and `'d'`?

# ANSWER
# ======
# The documentation for `Array#insert` in the Core API tells us that 
# it inserts the given values before the element with the given `index`.
# This is a destructive method, so there is no need to store the return
# value of the invocation in a new variable.
# Since the index of the value `'d'` is 3 (indexes are zero-based), we
# will invoce the `insert` method on the array `a` passing in the number
# 3 as the argument referencing the index number.
# We could do one of two things:

# Option A: provide an array `[5, 6, 7]` as the object to insert, and then
# invoke the `flatten!` method on `a` so that it mutates it back into a 
# one-dimensional array. 

a.insert(3, [5, 6, 7])
a.flatten!
p a       # => ['a', 'b', 'c', 5, 6, 7, 'd', 'e']

# Option B: we can invoke the `insert` method on the array `a` passing it
# the arguments `3` (the reference to the index number), and `7`.

a = %w(a b c d e)

a.insert(3, 7)
p a       # => ['a', 'b', 'c', 7, 'd', 'e']

# We then repeat the same action passing in a `6` instead of a `7`. Since
# the `insert` method shifts all elements in the array one index number
# further after inserting the `7`, we can repeat the action until
# we obtain the desired result:

a.insert(3, 6)
p a       # => ['a', 'b', 'c', 6, 7, 'd', 'e']

a.insert(3, 5)
p a       # => ['a', 'b', 'c', 5, 6, 7, 'd', 'e']

# IMPORTANT NOTES
# ===============
# Looking at the method signature for `Array#insert`, 
# `insert(index, obj...) -> ary`, we can tell that
# the method takes in 0 or more objects as arguments since it is adorned
# with '...'. This convention signifies '0 or more occurrences of the
# item to the left'.  This convention can also be represented by 
# `*obj` and `[obj]*`.
# It's also good to know that the fact that `ary` is returned signifies that 
# the method is destructive.  Non-destructive method return values are
# represented as `new_ary` in this convention.

# This means that we can actually invoke the method with multiple sequential 
# arguments as shown below:

a = %w(a b c d e)
a.insert(3, 5, 6, 7)
p a       # => ['a', 'b', 'c', 5, 6, 7, 'd', 'e']

# HELPFUL NOTES
# =============
# The `Object#object_id` method, which can be applied to any array object,
# since it is an instance of the Array class, which in turn is a child of the
# Object class) returns an integer identifier when invoked on an object.  
# This is useful in proving that the belowmentioned

name = "donald"
president = name.reverse!

p president.object_id
p name.object_id

# Both of these method invocations will return the same integer identifier,
# thereby proving that `new_name` and the return value of `upcase!` being
# invoked on `name` are in fact the very same object.

