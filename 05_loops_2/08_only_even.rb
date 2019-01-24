# EXERCISE 8
# ==========
# Using `next`, modify the code below so that it only prints even numbers.
 
number = 0

until number == 10
  number += 1
  puts number
end

# ANSWER
# ======
# the `next statement skips the rest of the current iteration.  We can add
# a condition to the `puts` invocation to check that it only outputs the 
# `number` if it is an odd value.  For this check, we will invoke the 
# `Integer#odd?` method which returns a `true` if the caller is odd.

puts "-- ANSWER"
 
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number 
end

# FURTHER EXPLORATION
# ===================
# Why did `next` have to be placed after the incrementation of `number`
# and before #puts?

# ANSWER
# ======
# `next` is placed after the incrementation of number so that the `until`
# loop does not enter an infinite loop.  It is place before the `puts`
# statement so that `number` is not output when it is odd, thereby
# meeting the problem's requirements.

