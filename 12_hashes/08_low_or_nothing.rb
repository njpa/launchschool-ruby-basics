# EX8
# ===
# In the following code, `numbers` isn't mutated because `#select` isn't a 
# destructive method. However, there is a destructive version of `#select`
# named `#select!`. Modify the code to use `#select!` instead of `#select`.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# Expected output:

# >> {low: 10}
# >> {low: 10}

# ANSWER
# ======
# We will simply invoke `Hash#select!` on `numbers` and then print out
# its value by invoking `#p`.

puts "-- ANSWER"

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.select! do |key, value|
  value < 25
end

p numbers

