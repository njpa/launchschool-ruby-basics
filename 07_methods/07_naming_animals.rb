# EX 7
# ====
# Fix the following code so that the names are printed as expected.

=begin
def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."
=end

# Expected output:
# >> The dog's name is Spot.
# >> The cat's name is Ginger.

# ANSWER
# ======
# the method definition of `dog` needs to take in one parameter (we infer
# this from the fact that the method call to `dog` in line 13 is passing in
# one argument.
# We then need to pass in a string argument `"Ginger"` to the method call to 
# `cat` in line 14.

puts "-- ANSWER"

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

