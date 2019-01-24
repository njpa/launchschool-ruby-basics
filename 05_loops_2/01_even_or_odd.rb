# EXERCISE 1
# ==========
# Write a loop that prints numbers 1-5 and whether the number is even or odd. 
# Use the code below to get started.

# count = 1

# loop do
#  count += 1
#end

# Expected output:

# 1 is odd!
# 2 is even!
# 3 is odd!
# 4 is even!
# 5 is odd!

# ANSWER
# ======
# We first need to ensure that the execution breaks out of the loop once
# the loop has iterated five times.  We can leverage the `count` variable
# initialized at top and insert a `break` statement in the `loop` which
# breaks only if `count` is equal to `5`.
# We then need to check if the `count` is even or odd.  We can do this by
# invoking the `Integer#%` method on `count` passing it the parameter `2`
# (essentially, we are checking the remainder of the division of the integer
# by the number 2).  We can then determine that the number is odd if the value
# returned by the method invocation is equal to `1`, and that it is even if 
# the value # returned is equal to `0`.

count = 1

loop do
  if count % 2 == 0 
    puts "#{count} is even!"
  else
    puts "#{count} is odd!"
  end
  count += 1
  break if count > 5
end


# ALTERNATIVE
# ===========
# We can also invoke the `odd?` or `even?` methods on `count` to obtain
# the desired effect.  Additionally, we can use a ternary `if` statement.

count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  break if count == 5
  count += 1
end

