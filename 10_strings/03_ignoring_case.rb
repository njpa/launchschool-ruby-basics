# EX 3
# ====
# Using the following code, compare the value of `name` with the string 
# `'RoGeR'` while ignoring the case of both strings. Print `true` if the 
# values are the same; print `false` if they aren't. Then, perform the 
# same case-insensitive comparison, except compare the value of `name` 
# with the string `'DAVE'` instead of `'RoGeR'`.

name = 'Roger'

# Expected output
# >> true
# >> false

# ANSWER
# ======
# To make a case-insensitive string comparison, we will compare the results
# of the invocation of either `upcase` or `downcase` on both strings.

p name.downcase ==  'RoGeR'.downcase
p 'DAVE'.downcase == 'RoGeR'.downcase

# INTERESTING
# ===========
# The `String#casecmp` method can be used for this purpose.
# We can invoke `casecmp` on `name` passing in the string `'RoGeR'` and
# this will return a `0` if the strings match, `-1` if `name` is
# lesser than the string passed in, or `1` is `name` is greater than
# the string passed in.

