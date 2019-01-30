# EX 4
# ====
# Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

# When `greet` is invoked with `#puts`, it should output the following:

# Hello World

# Make sure you add a space between `"Hello"` and `"World"`, however, you're    
# not allowed to modify hello or world.

# ANSWER
# ======
# For this problem, our `greet` method will return a string which will be
# the interpolation of the results of invoking the `hello` and `world`
# methods.  

def greet
  "#{hello} #{world}"
end

puts greet

