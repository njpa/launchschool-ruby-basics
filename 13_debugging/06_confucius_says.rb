# EX6
# ===
# You want to have a small script delivering motivational quotes, but with the 
# following code you run into a very common error message: 
# `no implicit conversion of nil into String (TypeError)`. 
# What is the problem and how can you fix it?

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# ANSWER
# ======
# The method definition for `get_quote` is controlling execution three 
# times with separate `if` expressions that return a String object if 
# their condition statements evaluate to `true`, or `nil` if they evaluate 
# to `false`. Since the third `if` statement is always executed, 
# (and will always result in the last evaluated value), 
# the method will always return `nil` unless it is provided `'Einstein'` as an 
# argument.
# When invoking `String#+` on `'"'` whilst passing in `nil` as argument, 
# Ruby raises a `TypeError` exception.
# To fix the issue, we can use an `if... elsif` statement in the 
# method definition to guarantee a String object is always returned.

def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

# Likewise, we can use explicit `return` statements in every `if` clause
# to ensure the method execution stops there and returns the relevant
# `String` object. 

def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

# Another sensible solution is to use a `case` expression in favor of 
# an `if` statement (makes sense since we are simply comparing the value 
# against three diferrent values).

def get_quote(person)
  case person
  when "Yoda"       
    'Do. Or do not. There is no try.'
  when "Confucius" 
    'I hear and I forget. I see and I remember. I do and I understand.'
  when "Einstein" 
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'

