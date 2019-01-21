# EXERCISE 5
# ==========
# Modify the code below so `"Hello!"` is printed 5 times.

say_hello = true

while say_hello
  puts 'Hello!'
  say_hello = false
end

# ANSWER
# ======
# The only way to keep track of the number of times this `while` loop
# has iterated is by initializing a variable in the outer scope of the 
# loop and assigning it to a number, and then reassigning that variable
# inside of the loop to a number greater than the original by a value of 1.
# We would then need to add a condition to the `while` loop so that the 
# loop knows that it must stop iterating when the condition is met.

say_hello = true
counter = 1

while say_hello
  puts 'Hello there!'
  counter += 1
  if counter > 5
    say_hello = false
  end
end

