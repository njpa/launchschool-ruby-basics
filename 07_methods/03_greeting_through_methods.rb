# EX 3
# ====
# Write two methods, one that returns the string `"Hello"` and one that returns 
# the string `"World"`. Then print both strings using #puts, combining them 
# into one sentence.

# ANSWER
# ======
# This problem's solution is the same as the previous except we are making 
# two method invocations rather than one in order to get the full string.
# We will output the final string by interpolating the strings returned
# by the calls to these methods.

def print_hello
  "Hello"
end

def print_world
  "World"
end

puts "#{print_hello} #{print_world}"

