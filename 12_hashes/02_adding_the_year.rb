# EX2
# ===
# Using the code below, add the key `:year` and the value `2003` to `car`.

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

# ANSWER
# ======
# We will use the hash's element assignment to create a new key-value
# pair. This is implemented by invoking the `Hash#[]` method on `car`.

car[:year] = 2003

p car

