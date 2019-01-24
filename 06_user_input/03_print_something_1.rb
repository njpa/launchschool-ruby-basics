# EX 3
# ====
# Write a program that asks the user whether they want the program to print 
# "something", then print it if the user enters `y`. Otherwise, print nothing.

# Examples:

# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# y
# something

# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# n

# $ ruby something.rb
# >> Do you want me to print something? (y/n)
# help

# ANSWER
# ======
# We first output the requirements using `puts` and store the entered text
# in a variable `answer` using `gets` (we invoke `chomp` on the result of
# `gets` to get rid of the carriage return, otherwise an equality statement
# might return `false` when we're expecting `true`).
# We then add a statement in which `something` is output if `answer` is
# equal to `"something"`

puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp
puts "something" if answer == "y"

