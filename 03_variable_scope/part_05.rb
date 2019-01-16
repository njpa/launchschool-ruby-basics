# EXERCISE
# ========
# What will the following code print, and why? 
# Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

# ANSWER
# ======
# This example is slightly different than the previous one.  In line 9
# we are simply reassigning the variable `b` to a new string object.  In the
# previous example, we were invoking a destructive method on that variable.
# Thus, the variable `b` in the `my_value` scope will no longer be pointing 
# to the object to which the variable `a` in the top level is pointing to.
# `puts a` will therefore output `"Xyzzy"`.

# This can be proved by invoking the `object_id` method on the `b` variable
# before and after the reassignment takes place in the `my_value` 
# method definition, and then comparing those integer identifiers to the one
# returned when we invoke `object_id` on the variable `a`.

name = "norman"

def change_my_name(name)
  p name.object_id     #  =>   15465100
  name = "norm"
  p name.object_id     #  =>   15374880
end

my_value(name)
p name.object_id       #  =>   15465100  
                       # We can see that the reassignment in line 31
                       # references the `name` variable (of the `
                       # `change_my_name` method definition) to a new
                       # object, thereby not mutating the object to which
                       # the `name` variable of the top level scope is 
                       # pointing to.

