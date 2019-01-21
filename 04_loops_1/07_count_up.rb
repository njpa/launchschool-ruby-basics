# EXERCISE 7
# ==========
# The following code outputs a countdown from 10 to 1. 
# Modify the code so that it counts from 1 to 10 instead.

count = 10

until count == 0
  puts count
  count -= 1
end

# ANSWER
# ======
# The logic used in the condition of the until loop is suitable for our end
# goal.  We simply need to reverse it.  Instead of referencing `count` to
# the object `10`, we will reference it to `1`.  Instead of reassigning
# `count` to a number smaller than `count` by a value of `1`, we will reassign
# `count` to a number larger thant `count` by a value of `1`.  Instead
# of using the equality `count == 0` as a condition for the `until` loop, we
# will use `count == 11` as a condition.

count = 1

until count == 11
  puts count
  count += 1
end

