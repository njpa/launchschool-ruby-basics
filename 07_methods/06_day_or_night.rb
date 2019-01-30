# EX 6
# ====
# The variable below will be randomly assigned as `true` or `false`. Write a 
# method named `time_of_day` that, given a boolean as an argument, prints 
# `"It's daytime!"` if the boolean is `true` and `"It's nighttime!"` if it's 
# `false`. Pass `daylight` into the method as the argument to determine whether 
# it's day or night.

daylight = [true, false].sample

# ANSWER
# ======
# Our method definition will take in one parameter called `daylight`.  The body
# of the method will have a conditional `if` statement which will check if
# the `daylight` method parameter is equal to `true` and then proceed to
# print the relevant string invoking `puts`. 

def time_of_day(daylight)
  if daylight
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

