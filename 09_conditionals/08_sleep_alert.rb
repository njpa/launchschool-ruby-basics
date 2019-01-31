# EX8
# ===
# In the code below, `status` is randomly assigned as `'awake'` or `'tired'`.

status = ['awake', 'tired'].sample

# Write an `if` statement that returns `"Be productive!"` if `status` equals 
# `'awake'` and returns `"Go to sleep!"` otherwise. Then, assign the return 
# value of the `if` statement to a variable and print that variable.

# ANSWER
# ======
# To meet the requirements, we must initialize a variable outside of the scope
# of the `if` statement, so that we can reassign it inside of the `if` statement
# depending on the condition's result, and then access it once again from the
# outer scope when we print it out.

p status

advice = nil

if status == 'awake'
  advice = "Be productive!"
else 
  advice = "Go to sleep!"
end

puts advice

# CORRECTION
# ==========
# In ruby, we can store the return value of an `if` statement in a variable:

advice = if status == 'awake'
          'Be productive!'
        else 
          'Go to sleep!'
        end

puts advice

