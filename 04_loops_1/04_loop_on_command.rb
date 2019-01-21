# EXERCISE 4
# ==========
# Modify the code below so the loop stops iterating when the user inputs 'yes'.

# loop do
#  puts 'Should I stop looping?'
#  answer = gets.chomp
# end

# ANSWER
# ======
# So far, we have only assigned the variable answer to the user input.
# We need to insert a condition which, when evaluating to `true` would
# break out of the loop.  

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

