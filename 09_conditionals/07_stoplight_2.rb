# EX7
# ===
# Convert the following `case` statement to an `if` statement.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

# ANSWER
# ======
# We only need to move the logic of the three clauses into an
# `if.. elsif..else` statement in order to meet the requirements of 
# this problem. 
# The `if` and `elsif` statements should explicitly check for conditions
# using equality operators for the same value every time - unlike how the 
# `case` operator implicitly compares multiple values to a single case using
# the `when` keyword.

p stoplight

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

