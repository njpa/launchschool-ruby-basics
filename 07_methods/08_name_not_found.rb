# EX 8
# ====
# Write a method that accepts one argument, but doesn't require it. The 
# parameter should default to the string `"Bob"` if no argument is given. 
# The method's return value should be the value of the argument.

=begin
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'
=end

# The code should output `true` twice.

# ANSWER
# ======
# The method definition will define a default argument called `name`.
# It will be set to reference the string `"Bob"` in order to comply
# with the requirements of the problem.

def assign_name(name = "Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

