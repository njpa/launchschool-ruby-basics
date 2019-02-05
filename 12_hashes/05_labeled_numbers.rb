# EX5
# ===
# Use `Hash#each` to iterate over `numbers` and print each element's key/value 
# pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

# Expected output:
# >> A high number is 100.
# >> A medium number is 50.
# >> A low number is 10.

# ANSWER
# ======
# The `Hash#each` method calls the provided block once for each key in the hash
# passing the key-value pair as block parameters.
# We will call `each` on `numbers` and pass in a block which invokes `puts` to
# output a string interpolated with the key-value pair that is passed in as 
# parameters to the block.

numbers.each { |key, val| puts "A #{key} number is #{val}." }

