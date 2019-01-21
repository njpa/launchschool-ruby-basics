# EXERCISE 3
# ==========
# Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end

# ANSWER
# ======
# In order to have the loop iterate a specific amount of times, we mus
# put in condition in the loop which would break out of the loop
# if the condition would evaluate to `true`.
# We would also need to reassign the `iterations` variable in every iteration
# so that it increments by a value of `1`.  This would be placed after
# the condition.
 
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  if iterations == 5
    break
  end
  iterations += 1
end
  
