# EX. 1
# =====
# What will the following code print and why? Don't run it until you have tried
# to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

# ANS
# ===
# `puts a` will output `7` since calling the `my_value` method does not change
# the value of a, it merely returns a value of `a + 10`.

# NOTES
# =====
# When we pass in the variable `a` as a parameter to `my_value` , the method
# parameter `b` (a variable local to `my_value` method) is set to point to
# the same object as the local variable `a`.
# The reassignment of the `b` variable in line 9 sets the variable `b` to point
# to a different object.  Throughout this process, the `a` variable is still
# pointing at the original object to which it was assigned when we initialized
# it in line 6.

# N.B. In ruby, numbers are immutable.  So there would be no real way
# of being able to mutate the object that `a` references.

