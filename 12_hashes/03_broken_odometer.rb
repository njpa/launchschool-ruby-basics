# EX3
# ===
# Using the following code, delete the key `:mileage` and its associated value 
# from `car`.

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

# ANSWER
# ======
# Ruby's `Hash#delete` method takes in a key as an argument and, if found in the
# calling hash, then the key-value pair is removed.

car.delete(:mileage)
p car

