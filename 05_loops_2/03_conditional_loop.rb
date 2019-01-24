# EXERCISE 3
# ==========
# Using an `if/else` statement, run a loop that prints 
# `"The loop was processed!"` one time if `process_the_loop` equals `true`.
# Print `"The loop wasn't processed!"` if `process_the_loop` equals `false`.

# process_the_loop = [true, false].sample

# ANSWER
# ======
# The `Array#sample` method will return a random element from the array
# of the caller.  

loop do
  process_the_loop = [true, false].sample
  if process_the_loop 
    puts "The loop was processed!"
    break
  else
    puts "The loop wasn't processed!"
  end
end

# CORRECTION
# ==========
# The exercise asks us to run a loop only `process_the_loop` is equal to
# `true`.  We must therefore put the `loop` inside of the `if/else` statement.
# The `process_the_loop` initialization should also stay outside of the 
# `if/else` stateemtn.

process_the_loop = [true, false].sample

if process_the_loop 
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

