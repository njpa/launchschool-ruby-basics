# EX 2
# In the code below, `sun` is randomly assigned as `'visible'` or `'hidden'`.

sun = ['visible', 'hidden'].sample

# Write an `unless` statement that prints `"The clouds are blocking the sun!"`
# unless `sun` equals `'visible'`.

# ANSWER
# Our `unless` clause will use a conditional statement that should evualuate
# to `true` if we want to output `"The clouds are blocking the sun!"`.
# In this case, `sun` being equal to `'visible'` would be adequate
# equality check.  

p sun

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

