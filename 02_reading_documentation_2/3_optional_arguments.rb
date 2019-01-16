# EXERCISE 3
# ==========
# Assume you have the following code:

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect

# What will each of the 3 puts statements print?

# ANSWER
# ======
# Invoking `String#split` without providing a delimiter as argument will
# have it default to using whitespace as a delimiter.
# `s.split` will therefore evaluate to this array:
# `['abc', 'def', 'ghi,jkl', 'mno', 'pqr,stu', 'vwx', 'yz']
# The `String#inspect` method returns a printable version of the 
# string on which it is invoked - surrounded by quote marks with special 
# characters escaped.  
# However, since we are invoking the `inspect` method on an array, ruby 
# will invoke the `Array#invoke` method, which creates a string representation
# of the array on which it is invoked.
# `s.split.inspect` will therefore evaulate to:
# `[\"abc\", \"def\", \"ghi,jkl\", \"mno\", \"pqr,stu\", \"vwx\", \"yz\"]
# The `IO#puts` writes the given object to `ios`.  Since the object is already
# in readable form, `puts s.split.inspect` will output the following:
# `["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]`

# Passing in `','` as an argument will follow the same logic as the previous
# example, except that we would have three elements in the resulting array
# since the delimitater is the `','` character, of which there are two in the 
# string.

# `["abc def", "jkl mno pqr", "stu vwx yz"]`

# Additionaly passing in a `2` as the `limit` parameter to the `String#split`
# invocation will return an array containing at most 2 substring (the first
# instances in which the split is possible followed by the remainder 
# of the string.

# `["abc def", "jkl mno pqr,stu vwx yz"]`

# NOTES
# =====
# There are a few conventions used in the signature of `String#split`
# which are good to know:

# split(pattern=nil, [limit]) -> anArray

# `pattern=nil` is a form for indicating an optional argument.  It indicates
# that the argument will default to `nil` if it is not provided.  `[limit]`
# indicates that `limit` is an optional argument with no default value.
# The fact that an `anArray` is specified as return value, indicates that 
# the method is non-destructive since we are invoking the method on a string
# and the result value is an array.

