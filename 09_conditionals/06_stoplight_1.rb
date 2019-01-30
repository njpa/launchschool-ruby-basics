# EX6
# ===
# In the code below, `stoplight` is randomly assigned as `'green'`, `'yellow'`,
# or `'red'`.

stoplight = ['green', 'yellow', 'red'].sample

# Write a `case` statement that prints `"Go!"` if `stoplight` equals `'green'`, 
# `"Slow down!"` if `stoplight` equals `'yellow'`, and `"Stop!"` if `stoplight` 
# equals `'red'`.

# ANSWER
# Our `case` statement will compare `stoplight` against `red`, and `green`,
# and leave an `else` clause for an implicit `yellow` scenario.

p stoplight

case stoplight 
when 'green'
  puts "Go!"
when 'red'
  puts "Stop!"
else
  puts "Slow down!"
end

