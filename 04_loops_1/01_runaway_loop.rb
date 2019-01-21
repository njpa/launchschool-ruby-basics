# EX 1
# ====
# The code below is an example of an infinite loop. 

loop do
  puts 'Just keep printing...'
end

# The name describes exactly what it does: loop infinitely. 
# This loop isn't useful in a real program, though. Modify the 
# code so the loop stops after the first iteration.

loop do
  puts 'Just keep printing...'
  break
end

# ANSWER
# ======
# Since this `loop` does not have a condition telling it when to 
# stop, we must use the reserved word `break`.  
# When `loop` executes a `break` it stops iterating immediately and 
# exits the block.  This is why we place the `break` after the `puts`
# invocation in line 14.

