# EX 5
# ====
# Write a program that prints `'Launch School is the best!'` repeatedly until 
# a certain number of lines have been printed. The program should obtain the 
# number of lines from the user, and should insist that at least 3 lines are 
# printed.

# For now, just use `#to_i` to convert the input value to an Integer, and check 
# that result instead of trying to insist on a valid number; validation of 
# numeric input is a topic with a fair number of edge conditions that are 
# beyond the scope of this exercise.

# ANSWER
# =======
# 1) initialize a variable `number_of_lines` outside of the scope of the loop
# and have it reference `nil` for now. 
# 2) Create a `loop`` skeleton and put the following logic inside it:
#   -obtain the number of lines from the user (request it with `puts`).
#   -capture response with `gets`, invokinkg `chomp` on it and in turn 
#  invoking `to_i` on the result.  Reassign the variable `number_of_lines`
#   to this new value.
#   - insert a `break` statement with an `if` condition that checks that 
#   `number_of_lines` is greater than or equal to 3.
# 3) Add the following logic outside and under the `loop`:
# - invoke the `Integer#times` method on `number_of_lines` and put the 
#   following logic into the block that is passed into the invocation:
#   - output the string `"Launch School is the best!"` using `puts`. 

number_of_lines = nil

loop do
  puts ">> How many times should I output? (1 - 3):"
  number_of_lines = gets.chomp.to_i
  break if number_of_lines >= 3
end

number_of_lines.times  { |_x| puts "Launch School is the best!" }

