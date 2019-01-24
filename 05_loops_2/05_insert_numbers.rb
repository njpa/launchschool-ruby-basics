# EXERCISE 5
# ==========
# Modify the code below so that the user's input gets added to the 
# `numbers` array. Stop the loop when the array contains 5 numbers.

# numbers = []

# loop do
#   puts 'Enter any number:'
#  input = gets.chomp.to_i
# end
# puts numbers

# ANSWER
# ======
# To meet the problem's requirements we must 
# (1) append the number obtained into the `numbers` array
# (2) use a conditional statement to break out of the loop
# if the array contains 5 numbers. 
# We can append the integer obtained from the user in to the `numbers` array
# using the shovel operator and we can use a `break` statement followed by
# an if statement to break out of the loop if the condition of 
# `numbers` having a size of `5` evaluates to `true`.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

