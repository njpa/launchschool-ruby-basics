# EX2
# ===
# Our `predict_weather` method should output a message indicating whether 
# a sunny or cloudy day lies ahead. However, the output is the same every 
# time the method is invoked. Why? Fix the code so that it behaves as expected.

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# ANSWER
# ======
# When provided with an object rather than a condition statement, 
# `if` statements in Ruby always evaluate as truthy unless `false` or 
# `nil` are provided.   
# The `sunshine` variable that is evaluated in the `if` statement is 
# actually a string object and not a boolean as was intended.
# The array from which the `sample` method invocation returns a random
# element should consist of an array of two booleans, `false` and `true`,
# and not of two strings.

