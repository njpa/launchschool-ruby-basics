# EX 1
# In the code below, `sun` is randomly assigned as `'visible'` or `'hidden'`.

sun = ['visible', 'hidden'].sample

# Write an `if` statement that prints `"The sun is so bright!"` 
# if `sun` equals `'visible'`.

# ANSWER
# We use the `==` condition, which will return a `true` if `sun` and `'visible'`
# have the same value when compared.   If this evaluates to `true`, the `if`
# clause will be executed thereby invoking the `puts` method passing in the 
# `"The sun is so bright!"` string.

if sun == 'visible'
  puts "The sun is so bright!"
end


