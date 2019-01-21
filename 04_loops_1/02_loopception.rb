# EX 2
# ===
# The code below is an example of a nested loop. Both loops currently loop 
# infinitely. Modify the code so each loop stops after the first iteration.

#loop do
#  puts 'This is the outer loop.'
#
#  loop do
#    puts 'This is the inner loop.'
#  end
#end

# ANSWER
# ======

puts 'This is outside all loops.'
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# Again, since neither one of the loops has a condition to tell it when
# to stop looping, we use the `break` statement to break out of both loops
# (always after the `puts` invocation so that we can see the output).

