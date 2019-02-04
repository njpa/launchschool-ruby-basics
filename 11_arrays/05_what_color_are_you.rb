# EX 5
# ====
# In the code below, an array containing different types of colors is 
# assigned to `colors`.

colors = ['red', 'yellow', 'purple', 'green']

# Use `Array#each` to iterate over `colors` and print each element.

# ANSWER
# ======
# We will call `each` on color and pass in a block which prints out
# the block parameter interpolated into a defined string.  The block
# parameter will reference the element of the `colors` array in the 
# current iteration.

colors.each { |color| puts "I'm the color #{color}!" }

