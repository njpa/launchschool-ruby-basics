# EX9
# ===
# Given the following code, use `Array#each` to print the plural of each 
# word in `words`.

words = 'car human elephant airplane'

# Expected output:
# >>  cars
# >>  humans
# >>  elephants
# >>  airplanes

# ANSWER
# ======
# We will first invoke `String#split` on `words` to obtain an array
# of words.  If no paremeter is passed into `split`, it will use 
# whitespace as the default delimiter.

words = words.split

# We will then invoke `Array#each` on `words` and pass in a block which will
# print out every element referenced by the block parameter appending
# an `'s'` to each one.

words.each { |word| puts word << "s" }

