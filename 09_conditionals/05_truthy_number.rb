# EX 5
# ====
# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# ANSWER
# ======
# The condition statement in line 8 will check for truthiness in `number`.
# Apparently, a reference to an integer object always evaluates to `true`
# when checked for truthiness.
# The code will therefore execute the code in the `if` clause, which 
# invokes the `puts` method passing in a string which interpolates the variable
# `number` initialized on line 6.
# The code outputs:
# >> My favorite number is 7.

# CORRECTION
# ==========
# In ruby, every expression evaluates to `true` when used in an condition.
# The only exceptions to this rule are `false` and `nil`.

