# EX7
# ===
# Use `Hash#select` to iterate over `numbers` and return a hash containing only 
# key-value pairs where the value is less than `25`. Assign the returned hash 
# to a variable named `low_numbers` and print its value using `#p`.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# Expected output:
# >> {:low:=>10}

# ANSWER
# ======
# Invoking `Hash#select` on a hash, will return a new hash containing those 
# key-value pairs for which the code in the passed-in block returns `true`.
# We will invoke the method on `numbers` and in the block we will put a 
# conditional statement which checks that the value parameter is less than
# `25`.  We will initialize a variable `low_numbers` and have it reference
# the return value of the method invocation.

low_numbers = numbers.select{ |k, v| v < 25 }
p low_numbers

