# EXERCISE 10
# ===========
# Given the code below, use a `while` loop to print `"Hello!"` twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

# ANSWER
# ======
# We can leverage (a) the already existing `greeting` method definition
# and (b) the initialized number_of_greetings` variable in order to 
# easily (a) to output the required text, and (b) to use in a conditional
# statement for a `while` loop.

# We will reassign the `number_of_greetings` variable inside of the 
# `while` loop to a number less than itself by 1.  Meanwhile, our 
# `while` loop will be iterating until the `number_of_greetings`
# reaches a value of `0`.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
	greeting
	number_of_greetings -= 1
end
