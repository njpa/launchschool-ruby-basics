# EXERCISE 6
# ==========
# Given the array below, use `loop` to remove and print each name. 
# Stop the loop once `names` doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

# Keep in mind to only use `loop`, not `while`, `until`, etc.

# ANSWER
# ======
# To meet the problem requirements we will insert a conditional statement
# within the `loop` statement that will execute a `break` statement if
# the size of the `names` array is equal to `0`, or `nil`.
# The `Array#shift` method (a destructive method) returns the first element
# of the array on which it is called on., whilst removing that element from
# the array and shifting the position of the remaining elements one index
# slot towards the beginning.

loop do
  puts names.shift
  break if names.size == 0
end

# NOTES
# =====
# The `Array#empty?` method, which returns the boolean value `true` if 
# the array does not contain any elements, can also be used instead of 
# invoking the `Array#size` method and checking that it is equal to `0`.

# EXTRA CREDIT
# =============
# Can you change this to print the names from last to first?

# We can invoke the `Array#reverse!` method on `names` to mutate it
# by reversing the order of its elements.  We can then apply the same
# logic as done before in order to output the names and break out of
# the loop once the array is empty.

puts "-- EXTRA CREDIT"

names = ['Sally', 'Joe', 'Lisa', 'Henry']
names.reverse!
loop do
  puts names.shift
  break if names.size == 0
end

# ALTERNATIVE
# ===========
# We can also use the `Array#pop` method.  This method returns the last element
# of an array and mutates it by removing this last element from the array.

puts "-- ALTERNATIVE"

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
end

