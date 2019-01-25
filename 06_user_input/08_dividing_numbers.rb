# EX 8
# ====
# Write a program that obtains two Integers from the user, then prints the 
# results of dividing the first by the second. The second number must not be 
# 0, and both numbers should be validated using this method:
#
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
#
# This method returns `true` if the input string can be converted to an 
# Integer and back to a string without loss of information, `false` otherwise.
# It's not a perfect solution in that some inputs that are otherwise valid 
# (such as `003`) will fail, but it is sufficient for this exercise.
#
# Examples:
#

# ANSWER
# ======
# We will implement a `loop` that will only break out once the checks for
# a valid numerator and denominator pass.
# - create a loop skeleton
# - prompt the user for a numerator using `puts`
# - capture the numerator using `gets`, invoke chomp on that value and store
# in a variable named `numerator`
# - prompt the user for a denominator using `puts`
# - capture the denominator using `gets`, invoke chomp on that value and store
# in a variable named `denominator`
# - break out of `loop` only if the following condition evaluates to `true`:
#   invoking `valid_number` with `numerator` as argument returns `true` 
#   and invoking `valid_number` with `denominator` as argument returns `true` 
#   and `numerator` is not equal to `0`.
# - outside of the `loop`, output the result of the dividing the resulting
# value of invoking `String#to_i` on `numerator` by the resulting value
# of invoking `String#to_i` on `denominator` and interpolated it in 
# presentable string.

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
  puts ">> Please enter the numerator: "
  numerator = gets.chomp
  puts ">> Please enter the denominator: "
  denominator = gets.chomp
  break if valid_number?(numerator) &&
           valid_number?(denominator) && 
           denominator != "0"
  puts "Please enter valid numbers, and do not enter `0` as the denominator!"
end

puts "#{numerator} / #{denominator} = #{numerator.to_i / denominator.to_i }"

# ALTERNATIVE
# ==========
#
