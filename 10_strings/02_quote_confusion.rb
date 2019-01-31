# EX2
# ===
# Modify the following code so that double-quotes are used 
# instead of single-quotes.

puts 'It\'s now 12 o\'clock.'

# Expected output:
# >> It's now 12 o'clock.

# ANSWER
# ======
# We simply wrap the string in double-quotes rather than single-quotes.
# Additionaly, it is not necessary to escape the single-quotes with 
# a backslash in this case.

puts "It's now 12 o'clock."

# INTERESTING
# ===========
# Single-quotes do not allow for escape sequences:

p "hello \n world"        # => "hello \n world"    
p 'hello \n world'        # => "hello \\n world"    
puts 'Line \n break'      # => Line \n break
puts "Line \n break"      # => Line 
                          #     break

# When using double-quotes, it's not necessary to escape single quotes:

puts "It\'s 4 o\'clock"     # It's 4 o'clock
puts "It's 4 o'clock"       # It's 4 o'clock

