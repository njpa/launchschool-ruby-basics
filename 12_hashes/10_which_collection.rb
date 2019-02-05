# EX10
# ====
# Rewrite `car` as a nested array containing the same key-value pairs.

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

# ANSWER 
# ======
# To do this, we will create a multidimensional array. The outer array
# will contain three arrays, each one containing in turn two elements
# each representing a key and value set.

car = [
  ["type", "sedan"],
  ["color", "blue"],
  ["year", 2003]
]

p car


# CORRECTION
# ==========
# To fully meet the problem's requirements (i.e. '... the same key-value
# pairs...'), we will use symbols rather than strings to represent
# the keys in the original hash.

car = [
  [:type, "sedan"],
  [:color, "blue"],
  [:year, 2003]
]

p car

