# EXERCISE 9
# ==========
# The following code increments `number_a` and `number_b` by either 0 
# or 1. `loop` is used so that the variables can be incremented 
# more than once, however, `break` stops the loop after the first 
# iteration. Use `next` to modify the code so that the loop iterates 
# until either `number_a` or `number_b` equals `5`. Print `"5 was reached!"` 
# before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  break
end

# ANSWER
# ======
# To meet the problem's requirements, we need to add a condition to the
# `break` statment.  The condition should check that either `number_a`
# or `number_b` have reached the value 5.
# We will also ensure that the `next` statement is place before the `puts`
# statement and that the `puts` statement is placed after the `break`
# statement.  This way, we will only break out of the program after
# the text `"5 was reached!"` was output.  And we will only get this far
# in the execution in the loop if either `number_a` or `number_b` have 
# reached a value of `5`.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  puts "number_a is currently: #{number_a}"
  puts "number_b is currently: #{number_b}"
  next if number_a < 5 and number_b < 5
  puts "5 was reached!"
  break
end

# ALTERNATIVE
# ===========
# In the previous solution, the `next` statement skips to the next 
# iteration of the loop only if both `number_a` and `number_b` are less
# than 5.  We could also use a condition which skips to the next
# iteration unless either `number_a` or `number_a` has reached a value 
# of 5.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  puts "number_a is currently: #{number_a}"
  puts "number_b is currently: #{number_b}"
  next unless number_a == 5 or number_b == 5
  puts "5 was reached!"
  break
end

# FURTHER EXPLORATIONS
# ====================
# Is using `next` the best option for this example? Could you use an 
# `if/else` statement instead?

# ANSWER
# ======
# An `if/else` statement could certainly also be used.

puts "-- Further explorations"

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  puts "number_a is currently: #{number_a}"
  puts "number_b is currently: #{number_b}"
  if number_a == 5 or number_b == 5
    puts "5 was reached!"
    break
  end
end

