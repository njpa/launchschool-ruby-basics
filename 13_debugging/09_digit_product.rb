# EX9
# ===
# Given a String of digits, our `digit_product` method should return the product 
# of all digits in the String argument. You've been asked to implement this 
# method without using `reduce` or `inject`.

# When testing the method, you are surprised by a return value of `0`. 
# What's wrong with this code and how can you fix it?

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')
# expected return value: 120
# actual return value: 0


# ANSWER
# ======
# The code in the block passed into the `Array#each` method in the 
# `digit_product` method definition will reassign `product` to the 
# value of `product` multiplied by the current block parameter `digit`.  
# This will work, so long as `product` is initialized to reference `1`.

