# EXERCISE 7
# ==========
# The method below counts from `0` to `4`. Modify the block so that it 
# prints the current number and stops iterating when the current number 
# equals `2`.

5.times do |index|
  puts index
end

# ANSWER
# ======
# We can also use the `break` statement in blocks passed into the 
# `Integer#times` method.  The `index` block parameter, which references
# the number of the current iteration, starting at index `0`, can
# be used in the condition added to the `break` statement to determine 
# whether the current is equal to `2` before stoping the iteration.

puts "-- ANSWER"

5.times do |index|
  puts index
  break if index == 2
end

# FURTHER EXPLORATION
# ===================
# Without running this code, how many values will be printed?

puts "-- FURTHER EXPLORATION"

5.times do |index|
  puts index
  break if index == 4
end

# ANSWER
# ======
# 5 values will be printed.

# EVEN FURTHER EXPLORATIONS
# =========================
# How about this?

puts "-- EVEN FURTHER EXPLORATIONs"

5.times do |index|
  puts index
  break if index < 7
end
#
# ANSWER
# ======
# 1 value will be printed.  The block will be iterated once 
# before the condition `index < 7`, which evaluates to `true`, will
# allow the `break` statement to stop the iteration.

