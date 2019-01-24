# EXERCISE 2
# ==========
# Modify the following code so that the loop stops if `number` 
# is between 0 and 10.

# loop do
#  number = rand(100)
#  puts number
# end

# ANSWER
# ======
# To achieve this, need to add a `break` statement that will execute 
# if the value of `number` is greater than `0` and less than `10`.
# This statement should be placed afte rthe `number = rand(100)`
# so that we can apply the condition on the newly assigned `number`.
# And it should go before the `puts number` statement so that it does
# not print anything in the event that the condition for the `break`
# statement is met.

loop do
  number = rand(100)
  break if number >= 0 and number =< 10
  puts number
end


# ALTERNATIVE
# The `Comparable#between?` method takes two arguments, a floor value and a 
# ceiling value and returns `true` if the number on which it is invoked
# is found between the floor and the ceiling, and `false` if it is not.

loop do
  number = rand(100)
  break if number.between?(0, 10)
  puts number
end

