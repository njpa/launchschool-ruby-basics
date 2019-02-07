# EX8
# ===
# The following code throws an error. Find out what is wrong and think about how 
# you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

#colors.shuffle!
#things.shuffle!

i = 0
loop do
  break if i >= colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end
  puts i
  i += 1
end

# ANSWER
# ======
# The condition passed to the `break` statement will ensure the loop stops 
# iterating after 9 iterations, which is the length of the `colors` array 
# plus `1` since `i` was initialized to be equal to `0`.

# However, the `things` array contains 7 elements.  If we attempt to access
# a non-existing element, Ruby will return `nil`.
# The attempt to concatenate `nil` to a `String` object will raise a 
# `TypeError' since the `String#+` method expects a `String` object.

# There are a few things we can do:
# 1. Modify the condition provided to the `break` statement so that if
# breaks out of the loop when `i` is equal to the size of the `colors` array.  
# This allows `i` to reach the last index number of the `colors` array.
# 2. Initialize `colors` and `things` to reference arrays of the same size,
# and modify the condition provided to the `break` statement to return `true`
# if `i` equals the length of any one of these arrays.
# 3. Modify the condition provided to the `break` statement so that it returns
# `true` if `i` is equal to the length of `things`, and in the `if..else` 
# clauses, invoke `#to_s` on the array element references so that an empty 
# string is returned every time the array element reference accesses a `nil`
# value. 

