# EXERCISE 4
# ==========
# The code below asks the user `"What does 2 + 2 equal?"` and uses 
# `#gets` to retrieve the user's answer. Modify the code so `"That's correct!"`
# is printed and the loop stops when the user's answer equals `4`. Print 
# `"Wrong answer. Try again!"` if the user's answer doesn't equal `4`.

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
# end

# ANSWER
# ======

# To meet the problem requirements, we must break out of the loop only
# when the variable `answer` is equal to `4`.  We will insert an `if/else`
# statement inside of the loop, directly under the assignment of the `answer`
# variable.  The condition for the `if` statement will be `answer == 4`.
# If this evaluates to `true`, we will output `That's correct!` and put a
# `break` statement directly after that.   If not, then we will output
# `Wrong answer. Try again!"

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# NOTES
# We don't have to necessarily use an `if/else` statement since the code
# will continue executing the rest of the `loop` block in the event that 
# the `if` statement does not evaluate to `true`. 


loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts "Wrong answer. Try again!"
end

