# EX4
# ===
# Using the following code, select the value `'blue'` from `car` and print it 
# with `#puts`.

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

# ANSWER
# ======
# We can use the `Hash#[]` method to access the value `'blue'` by providing its
# corresponding key as the argument to the method call.

puts car[:color]

