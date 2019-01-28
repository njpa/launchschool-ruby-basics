# EX 10
# =====
# Write a program that requests two integers from the user, adds them together,
# and then displays the result. Furthermore, insist that one of the integers 
# be positive, and one negative; however, the order in which the two integers 
# are entered does not matter.

# Do not check for the positive/negative requirement until both integers are 
# entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

# ANSWER
# ======
# We will use one `loop` per integer requested.  We must therefore initialize the
# `number_a` variable and `number_b` variable in the main outer scope.  The user
# will be prompted for a value for each number in each `loop`.  The value will be
# captures using `gets` with `chomp` invoked on the value.  We will then invoke
# the `valid_number?` method passing in the captured string as argument.  If this
# invocation yields a `true` as result, we will reassign the `number_a` and 
# `number_b` variables correspondingly to the captured strings after having 
# invoked `to_i` on them. A break statement will be placed directly after the 
# reassignment so that the execution can move out of the loop to the next step.
#  If the method invocation returns `false` then a message will be output using
# `puts`.
# The numbers will be added outside of the loops in the outer scope, and the result
# will be stored in a varaible named `sum`.  A message will output this `sum` 
# using `puts` and string interpolation.
# In order to ensure that one number is negative and the other positive, we must 
# track this information outside of the scope of each loop, so that the second 
# `loop` can access this information from its scope and then decide whether the
# second number is appropriate according the information stored in the variable.
# We can initialize a boolean value named `first_positive?` in the first line.  
# In our first loop, we can assign this variable to `true` if a valid number was 
# entered, and if that number was greater than `0`, and to `false`, if a valid 
# number was entered, and if that number was less than `0`.
# We will make use of this variable in the second loop after we check that the 
# number entered is valid.  The following pseudocode shows what will happen:
# If `first_positive?` is `true` and the second number is greater than `0`, 
# then we will prompt the user to enter a negative number,
# Otherwise, if `first_positive?` is `false` and the second number is less 
# than `0`, then we will prompt the user for a positive number, 
# otherwise we will reassign the `number_b` to the value captured and break out 
# of the loop.


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

first_positive = false
number_a = nil
loop do
  puts ">> Please enter a number (positive or negative): "
  number_entered = gets.chomp
  if valid_number?(number_entered) and number_entered.to_i > 0
    number_a = number_entered.to_i 
    first_positive = true
    break
  elsif valid_number?(number_entered) and number_entered.to_i < 0
    number_a = number_entered.to_i 
    break
  else
    puts ">> Please enter a valid, non-zero integer!"
  end
end

number_b = nil
loop do
  puts ">> Please enter another number (positive or negative): "
  number_entered = gets.chomp
  if valid_number?(number_entered) and number_entered.to_i > 0  and first_positive
    puts ">> Please enter a negative number!"
  elsif valid_number?(number_entered) and number_entered.to_i < 0 and !first_positive
    puts ">> Please enter a positive number!"
  elsif valid_number?(number_entered)
    number_b = number_entered.to_i
    break
  else
    puts ">> Please enter a valid, non-zero integer!"
  end
end

sum = number_a + number_b
puts "The sum of #{number_a} and #{number_b} is equal to #{sum}"


# ALTERNATIVE
# ===========
# Another approach is to have a method handle a) the prompting for an integer,
# b) the validation of the number, c) looping until a valid number has been
# entered, and c) returning the valid number.  This is a more concise 
# approach in which we are not repeating some of the validation condition
# logic that we see in the two loops in the solution above.
# We will invoke this method from inside of a loop in order to assign values
# to `number_a` and `number_b`, both of which are initialized in the outer 
# scope. 
# A clever conditional check that the product of both valid numbers is a 
# negative value will ensure that one value is positive and the other
# negative.  This check can be performed inside of loop, and if it evaluates
# to `true`, we can break out of the loop.

puts "-- ALTERNATIVE"


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter an integer: "
    number_entered = gets.chomp
    return number_entered.to_i if valid_number?(number_entered)
    puts ">> Please enter a valid, non-zero integer!"
  end
end

number_a = nil
number_b = nil

loop do
  number_a = read_number
  number_b = read_number
  break if number_a * number_b < 0
  puts ">> Please enter one negative number and one positive number!"
end

sum = number_a + number_b
puts "The sum of #{number_a} and #{number_b} is equal to #{sum}"

