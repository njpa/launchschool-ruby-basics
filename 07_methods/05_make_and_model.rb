# EX 5
# ====
# Using the following code, write a method called `car` that takes two arguments 
# and prints a string containing the values of both arguments.

# car('Toyota', 'Corolla')

# Expected output:
# >> Toyota Corola

# ANSWER
# ======
# Our method definition will contain two parameters, `make` and `model`.
# It will invoke `Kernel#puts` passing in a string which will be the 
# result of `model` being appended to `" "` and that being appended to
# `make`. 

def car(make, model)
  puts make + " " + model
end

car('Toyota', 'Corolla')

# Further Exploration
# ===================
# Remove the `#puts` call from the `car` method. Modify your program so it 
# still prints the result.
# How do the return values of `car` differ with and without the #puts?

# ANSWER
# ======
# If our method definition has a `puts` statement as the last statement in the
# method, the method returns `nil`, since `Kernel#puts` returns `nil`.
# If we modify our program so that `car` returns a string, the method is now
# returning a string.

puts "Further Exploration"

def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')

