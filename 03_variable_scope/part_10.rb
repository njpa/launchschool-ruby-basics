# EXERCISE 10
# ===========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

# ANSWER
# ======
# On line 9, the `ary` method parameter is set to reference the object
# array `[1, 2, 3]` (the same object that the `array` variable is pointing to). 
# When we invoke the `each` method on the `ary` variable, we are passing
# in a block as an argument within which a reassignment of the variable `a` 
# is attempted.
# As the block is inside of the `my_value` method definition, its outer
# scope is limited to the method-level since methods are entirely 
# self-contained.  Since ruby will not find a variable named `a`
# at this scope, it will raise a `NameError` exception.

# NOTES (CORRECTION)
# ==================
# Actually, the `#+` method is being used in line 11 in the , which can more 
# statement `a = a + b`. Ruby will attempt to evaluate `a + b`
# before reassigning.  `a + b` will then raise a `NoMethodError` exception 
# since the `#+` is invoked on the variable `a`, which is equal to 
# `nil` in this case.

# EXTRA CREDIT
# ============
# If we would like for the block in the `my_value` method to have access
# to the `a` variable defined in the outer scope, we could simply pass
# in the variable `a` as a second argument in the method invocation and 
# accept it as a parameter in the method definition.
 
a = 7
array = [1, 2, 3]

def my_value(ary, a)
  ary.each do |b|
    a += b
  end
end

my_value(array, a)
puts a

# The method parameter `a` will then be accesible by the block inside the 
# method.  Although the `a` variable in the method is referencing the same
# object to which the `a` variable in the outer scope is pointing to, once 
# we have reassigned the variable `a` in the block (via the `a = a + b` 
# expression), the variable `a` will no longer be pointing to that same
# object.  And, yes, ruby is reassigning because.... in ruby 
# numbers are immutable.

