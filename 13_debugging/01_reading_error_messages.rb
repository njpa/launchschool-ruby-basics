# EX 1
# ====
# You come across the following code. 
# What errors does it raise for the given examples and what exactly 
# do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)

# ANSWER
# ======
# The method definition for `find_first_nonzero_among` takes one parameter.
# If we invoke the method with the 6 arguments as shown in line 15,
# ruby will raise an `ArgumentError` telling us that the method is expecting
# 1 argument and not 6.

# We can infer that the `find_first_nonzero_among` method definition is 
# expecting an array as argument since the method attempts to invoke the
# `Array#each` method on the method parameter `numbers`.
# If we invoke the method passing in an Integer, Ruby will raise a 
# 'NoMethodError' exception when it attempts to invoke
# `#each` method on an integer value since the `Integer` class does not 
# have an `#each` method.

