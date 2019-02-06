# EX5
# ===
# We want to iterate through the `numbers` array and return a new array 
# containing only the even numbers. However, our code isn't producing the 
# expected output. Why not? How can we change it to produce the 
# expected result?

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]

# ANSWER
# ======
# The `Array#map` method will return a new array containing the values returned 
# by the block.  For example, on the first iteration, `n if n.even?` evaluates 
# to `nil`, and on the second iteration, it evaluates to `2`.  We will end up
# with an array containing the same number of elements as the original array.
# We can infer that the `Array#select` method is more adequate, since it will
# return a new array containing only those elements for which the code evaluated
# in the block returns a true.

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select { |n| n if n.even? }

p even_numbers # expected output: [2, 6, 8]

