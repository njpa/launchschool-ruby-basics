# EXERCISE 6
# ==========
# Using the ruby documentation, determine how you would write a Symbol that 
# represents your name. We aren't looking for a String; we want a Symbol, which
# is one of ruby's datatypes.

# ANSWER
# ======
# The documentation for the Sybmol object is in the Core API docs.
# It says that symbols are generated using the `:name` and `:"string"` 
# literals syntax and using the various `to_sym` methods.
# We could therefore do one of the following:

:norm     
  # => :norm 

"norm".to_sym 
  # => :norm 


# NOTES
# =====
# The 'literals_rdoc' page in the Core API has more example on how to
# create symbols.

