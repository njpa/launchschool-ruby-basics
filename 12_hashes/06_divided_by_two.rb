# EX6
# ===
# Use `Enumerable#map` to iterate over `numbers` and return an array containing 
# each number divided by 2. Assign the returned array to a variable named 
# `half_numbers` and print its value using `#p`.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# Expected output:
# >> [50, 25, 5]

# ANSWER
# ======
# The `Enumerable#map` method applies the code that is passed in the block to 
# every key-value pair in the hash.  The key and value of the current iteration
# is referenced by the block paramteres provided, and the method invocation
# returns a new array containing the evaluated values returned from every
# invocation of the block.

# We will invoke `Enumerable#map` on `numbers`, and pass in a block referencing
# the key and value of the current iteration in the hash.  The block will 
# return the value of `val` divided by `2`.
# The return result of this invocation will be stored in the variable named
# `half_numbers`.  We will then print its value by invoking `#p`.

half_numbers = numbers.map { |key, val| val/2 }
p half_numbers

# NOTES
# =====
# `Enumerable#map` does essentially the same thing as `Array#map`, except that
# it can accept two block parameters instead of one, making it suitable for
# invocation on hashes.  It always returns an array even when invoked on a 
# hash.

